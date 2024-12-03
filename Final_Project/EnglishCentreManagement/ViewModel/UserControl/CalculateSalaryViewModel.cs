using EnglishCentreManagement.Database;
using EnglishCentreManagement.Dialog;
using EnglishCentreManagement.Interfaces;
using EnglishCentreManagement.Model.DisplayModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Windows;

namespace EnglishCentreManagement.ViewModel.UserControl
{
    public class CalculateSalaryViewModel : BaseViewModel
    {
        private string _name = "";
        private TeacherSalary _crtTeacherSalary = new TeacherSalary();
        private ITeacherDao teacherDAO = new TeacherDAO();
        private IEnterprise_infoDAO enterprise_InfoDAO = new Enterprise_infoDAO();
        private ISalaryDAO salaryDAO = new SalaryDAO();
        private IStatisticsDao statisticsDAO = new StatisticsDAO();

        private List<TeacherSalary> _lstSalry = new List<TeacherSalary>();
        private List<TeacherSalary> _salarys = new List<TeacherSalary>();

        public List<TeacherSalary> Salarys
        {
            get => _salarys;
            set
            {
                _salarys = value;
                OnPropertyChanged(nameof(Salarys));
            }
        }
        public ICommand ShowSearch { get; set; }
        public ICommand ShowLoad { get; set; }
        //public ICommand EditCommand { get; }
        public ICommand DetailCommand { get; }
        //public ICommand ShowTeacherStatisticsDialog { get; }
        public string Name
        {
            get => _name;
            set
            {
                _name = value;
                OnPropertyChanged(nameof(Name));
            }
        }


        public TeacherSalary CrtTeacherSalary
        {
            get => _crtTeacherSalary;
            set
            {
                _crtTeacherSalary = value;
                OnPropertyChanged(nameof(CrtTeacherSalary));
            }
        }

        public CalculateSalaryViewModel()
        {
            LoadSalarys();
            ShowSearch = new RelayCommand<Action>(ExecuteShowSearch);
            ShowLoad = new RelayCommand<Action>(ExecuteShowLoad);
            DetailCommand = new RelayCommand<string>(ExecuteDetailCommand);
        }

        private void ExecuteDetailCommand(string obj)
        {
            Window dialog = new TeacherStatisticsDialog();
            ((TeacherStatisticsViewModel)dialog.DataContext).CurrentTeacherSalary = salaryDAO.getTeacherSalaryByTeacher(obj);
            ((TeacherStatisticsViewModel)dialog.DataContext).LoadChart();
            dialog.ShowDialog();
        }

        private void ExecuteShowLoad(Action obj)
        {
            LoadDataGrid();
        }

        private void ExecuteShowSearch(Action obj)
        {
            Salarys.Clear();
            _lstSalry=salaryDAO.getListByName(Name);
            Salarys=_lstSalry.ToList();

            if (Salarys.Count > 0) return;

            CrtTeacherSalary = salaryDAO.getTeacherSalaryByTeacher(Name);
            Salarys.Add(CrtTeacherSalary);
            if (Salarys.Count == 0) { LoadDataGrid(); } else LoadDataGrid();
        }

        public void LoadSalarys()
        {
            LoadDataGrid();
        }
        public void LoadDataGrid()
        {
            _lstSalry = salaryDAO.getListAllSalary();
            foreach (TeacherSalary teacherSalary in _lstSalry)
            {
                teacherSalary.Teacher.Salary= 5000000 * teacherSalary.Statistics.NumberOfClass + 1000000 * ((long)teacherSalary.Statistics.GraduateRate);
                teacherDAO.UpdateSalary(teacherSalary.Teacher);
            }
            _lstSalry=salaryDAO.getListAllSalary();
            Salarys=_lstSalry.ToList();
        }

    }
}