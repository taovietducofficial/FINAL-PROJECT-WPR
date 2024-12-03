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
    public class AddTeacherViewModel : BaseViewModel
    {
        private string _name = "";
        private Teacher _crtTeacher = new Teacher();
        private ITeacherDao teacherDAO = new TeacherDAO();
        private IEnterprise_infoDAO enterprise_InfoDAO = new Enterprise_infoDAO();

        private List<Teacher> _lstTeacher = new List<Teacher>();
        private List<Teacher> _teachers = new List<Teacher>();

        public List<Teacher> Teachers
        {
            get => _teachers;
            set
            {
                _teachers = value;
                OnPropertyChanged(nameof(Teachers));
            }
        }
        // Command
        public ICommand ShowSearch { get; set; }
        public ICommand ShowLoad { get; set; }
        public ICommand ShowCreateTeacherDialog { get; }
        public ICommand EditCommand { get; }
        public ICommand RemoveCommand { get; }
        public string Name
        {
            get => _name;
            set
            {
                _name = value;
                OnPropertyChanged(nameof(Name));
            }
        }
        public Teacher CrtTeacher
        {
            get => _crtTeacher;
            set
            {
                _crtTeacher= value;
                OnPropertyChanged(nameof(CrtTeacher));
            }
        }
        public AddTeacherViewModel()
        {
            LoadTeachers();
            ShowSearch = new RelayCommand<Action>(ExecuteShowSearch);
            ShowLoad = new RelayCommand<Action>(ExecuteShowLoad);
            ShowCreateTeacherDialog = new RelayCommand<object>(ExecuteShowCreateTeacherDialog);
            EditCommand = new RelayCommand<string>(ExecuteEditCommand);
            RemoveCommand = new RelayCommand<string>(ExecuteRemoveCommand);
        }

        private void ExecuteRemoveCommand(string id)
        {
            teacherDAO.Delete(id);
            LoadDataGrid();
        }

        private void ExecuteEditCommand(string id)
        {
            Window dialog = new CreateTeacherDialog();
            ((CreateTeacherViewModel)dialog.DataContext).CanReadonlId = true;
            ((CreateTeacherViewModel)dialog.DataContext).CanReadonlyPassword = true;
            ((CreateTeacherViewModel)dialog.DataContext).CanReadonlyUserName = true;
            ((CreateTeacherViewModel)dialog.DataContext).CurrentTeacher=teacherDAO.getByID(id);
            dialog.ShowDialog();
            CrtTeacher = ((CreateTeacherViewModel)dialog.DataContext).CurrentTeacher;
            if (!CrtTeacher.IsHaveNullValue())
            {
                teacherDAO.Update(CrtTeacher);
                enterprise_InfoDAO.Update(CrtTeacher.Enter_Infor);
            }
        }

        private void ExecuteShowCreateTeacherDialog(object obj)
        {
            Window dialog = new CreateTeacherDialog();
            dialog.ShowDialog();
            CrtTeacher = ((CreateTeacherViewModel)dialog.DataContext).CurrentTeacher;
            if (!CrtTeacher.IsHaveNullValue())
            {
                CrtTeacher.Enter_Infor.Title = "GV";
                teacherDAO.Add(CrtTeacher);
                enterprise_InfoDAO.Add(CrtTeacher.Enter_Infor);
            }
            LoadDataGrid();
        }

        private void ExecuteShowLoad(Action obj)
        {
            LoadDataGrid();
        }

        private void ExecuteShowSearch(Action obj)
        {
            Teachers.Clear();
            _lstTeacher = teacherDAO.getListByName(Name);
            Teachers = _lstTeacher.ToList();

            if (Teachers.Count > 0) return;

            CrtTeacher=teacherDAO.getByID(Name);
            Teachers.Add(CrtTeacher);
            if (Teachers.Count == 0) { LoadDataGrid(); } else return;
        }

        public void LoadTeachers()
        {
            LoadDataGrid();
        }

        public void LoadDataGrid()
        {
            _lstTeacher=teacherDAO.GetListAllTeacher();
            Teachers=_lstTeacher.ToList();
        }
    }
}