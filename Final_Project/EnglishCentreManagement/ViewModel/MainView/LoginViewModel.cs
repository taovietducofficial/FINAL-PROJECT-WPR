using EnglishCentreManagement.Database;
using EnglishCentreManagement.Interfaces;
using EnglishCentreManagement.Model;
using EnglishCentreManagement.ViewModel.UserControl;
using System;
using System.Security.Principal;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace EnglishCentreManagement.ViewModel.MainView
{
    public class LoginViewModel : BaseViewModel
    {
        private string _username = "";
        private string _password = "";
        private string _errorMessage = "";
        private bool _isViewVisible = true;

        private IEnterprise_infoDAO enterprise_InfoDAO = new Enterprise_infoDAO();
        private IStudentDao studentDao = new StudentDAO();
        private ITeacherDao teacherDao = new TeacherDAO();
        private IManagerDao managerDao = new ManagerDAO();

        public ICommand LoginCommand { get; }
        public ICommand ExitCommand { get; }

        public string Username
        {
            get => _username;
            set
            {
                _username = value;
                OnPropertyChanged(nameof(Username));
            }
        }
        public string Password
        {
            get => _password;
            set
            {
                _password = value;
                OnPropertyChanged(nameof(Password));
            }
        }
        public string ErrorMessage
        {
            get => _errorMessage;
            set
            {
                _errorMessage = value;
                OnPropertyChanged(nameof(ErrorMessage));
            }
        }
        public bool IsViewVisible
        {
            get => _isViewVisible;
            set
            {
                _isViewVisible = value;
                OnPropertyChanged(nameof(IsViewVisible));
            }
        }

        //Constructors
        public LoginViewModel()
        {
            

            LoginCommand = new RelayCommand<Window>(CanExecuteLoginCommand, ExecuteLoginCommand);
            ExitCommand = new RelayCommand<Window>((p) => { p.Close(); });
        }

        private void RefreshAllTest()
        {
            Username = "";
            Password = "";
            ErrorMessage = "";
        }

        private void ExecuteLoginCommand(Window p)
        {
            var isValidUser = enterprise_InfoDAO.AuthenticateEnterpriseInfor(Username, Password);

            if (isValidUser)
            {
                //Thread.CurrentPrincipal = new GenericPrincipal(new GenericIdentity(Username), null);
                Window nextWindow = new Window();
                CurrentUser.Instance.Enterprise_Infor = enterprise_InfoDAO.getByUserName(Username, Password);
                if (CurrentUser.Instance.isStudent())
                {
                    CurrentUser.Instance.CurrentStudent = studentDao.getById(CurrentUser.Instance.Enterprise_Infor.ID);
                    nextWindow = new StudentWindow();
                }
                else if (CurrentUser.Instance.isTeacher())
                {
                    CurrentUser.Instance.CurrentTeacher = teacherDao.getByID(CurrentUser.Instance.Enterprise_Infor.ID);
                    nextWindow = new TeacherWindow();
                }
                else if (CurrentUser.Instance.isManager())
                {
                    CurrentUser.Instance.CurrentManager = managerDao.getById(CurrentUser.Instance.Enterprise_Infor.ID);
                    nextWindow = new ManagerWindow();
                }
                p.Hide();
                nextWindow.ShowDialog();
                RefreshAllTest();
                p.Show();   
            }
            else
            {
                ErrorMessage = "* Username or Password is not correct";
            }
        }

        private bool CanExecuteLoginCommand(object p)
        {
            bool validData;

            if (string.IsNullOrWhiteSpace(Username) || string.IsNullOrWhiteSpace(Password))
                validData = false;
            else
                validData = true;

            return validData;
        }
    }
}
