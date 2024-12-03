using EnglishCentreManagement.Database;
using EnglishCentreManagement.Dialog;
using EnglishCentreManagement.Interfaces;
using EnglishCentreManagement.Model;
using EnglishCentreManagement.ViewModel.Dialog;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace EnglishCentreManagement.ViewModel.UserControl
{
    public class AddStudentViewModel : BaseViewModel
    {
        private string _name = "";
        private Student _crtStudent = new Student();
        private IStudentDao studentDAO = new StudentDAO();
        private IEnterprise_infoDAO enter_inforDAO = new Enterprise_infoDAO();

        private List<Student> _lstStudent = new List<Student>();
        private List<Student> _Students = new List<Student>();
        public List<Student> Students
        {
            get => _Students;
            set
            {
                _Students = value;
                OnPropertyChanged(nameof(Students));
            }
        }
        
        public ICommand EditCommand { get; }
        public ICommand RemoveCommand { get; }
        public ICommand ShowCreateStudentDialog { get; }
        public ICommand ShowSearch { get; set; }
        public ICommand ShowLoad { get; set; }

        public string Name
        {
            get => _name;
            set
            {
                _name = value;
                OnPropertyChanged(nameof(Name));
            }
        }
        public Student CrtStudent
        {
            get => _crtStudent; set
            {
                _crtStudent = value;
                OnPropertyChanged(nameof(CrtStudent));
            }
        }
        public AddStudentViewModel()
        {
            LoadStudents();
            ShowSearch = new RelayCommand<Action>(ExecuteShowSearch);
            ShowLoad = new RelayCommand<Action>(ExecuteShowLoad);
            ShowCreateStudentDialog = new RelayCommand<object>(ExecuteShowCreateStudentDialog);
            EditCommand = new RelayCommand<string>(ExecuteEditCommand);
            RemoveCommand = new RelayCommand<string>(ExecuteRemoveCommand);
        }

        private void ExecuteRemoveCommand(string id)
        {
            studentDAO.Delete(id);
            LoadStudents();
        }

        private void ExecuteEditCommand(string id)
        {
            Window dialog = new CreateStudentDialog();
            ((CreateStudentViewModel)dialog.DataContext).CanReadonlId=true;
            ((CreateStudentViewModel)dialog.DataContext).CanReadonlyPassword=true;
            ((CreateStudentViewModel)dialog.DataContext).CanReadonlyUserName=true;
            ((CreateStudentViewModel)dialog.DataContext).CurrentStudent=studentDAO.getById(id);
            dialog.ShowDialog();
            CrtStudent = ((CreateStudentViewModel)dialog.DataContext).CurrentStudent;
            if (!CrtStudent.IsHaveNullValue())
            {
                studentDAO.Update(CrtStudent);
                enter_inforDAO.Update(CrtStudent.Enter_Infor);
            }
            LoadStudents();
        }

        private void ExecuteShowCreateStudentDialog(object obj)
        {
            Window dialog = new CreateStudentDialog();
            dialog.ShowDialog();
            CrtStudent = ((CreateStudentViewModel)dialog.DataContext).CurrentStudent;
            if (!CrtStudent.IsHaveNullValue())
            {
                CrtStudent.Enter_Infor.Title = "HV";
                studentDAO.Add(CrtStudent);
                enter_inforDAO.Add(CrtStudent.Enter_Infor);
            }
            LoadStudents();
        }
        private void ExecuteShowLoad(Action obj)
        {
            LoadDataGrid();
        }

        private void ExecuteShowSearch(Action obj)
        {
            Students.Clear();

            _lstStudent = studentDAO.getListByName(Name);
            Students = _lstStudent.ToList();

            if (Students.Count > 0) return;

            CrtStudent =studentDAO.getById(Name);
            Students.Add(CrtStudent);

            if (Students.Count == 0) { LoadDataGrid(); } else return;

        }

        public void LoadStudents()
        {
            LoadDataGrid();
        }
        public void LoadDataGrid()
        {
            _lstStudent = studentDAO.GetListAllStudent();
            Students =_lstStudent.ToList();
        }

    }
}