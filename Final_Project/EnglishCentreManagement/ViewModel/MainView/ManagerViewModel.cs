using EnglishCentreManagement.Database;
using EnglishCentreManagement.Interfaces;
using EnglishCentreManagement.Model;
using EnglishCentreManagement.ViewModel.UserControl;
using MaterialDesignThemes.Wpf;
using System;
using System.CodeDom.Compiler;
using System.Threading;
using System.Windows.Input;
namespace EnglishCentreManagement.ViewModel.MainView
{
    public class ManagerViewModel : BaseViewModel
    {
        private BaseViewModel _currentChildView;
        private string _caption;
        private PackIconKind _icon;
        private Manager _crtManager;

        private IEnterprise_infoDAO enterprise_InfoDAO = new Enterprise_infoDAO();

        public ICommand ShowHomeView { get; }
        public ICommand ShowManageClassroomView { get; }
        public ICommand ShowUserInforView { get; }
        public ICommand ShowAddStudentView { get; }
        public ICommand ShowAddTeacherView { get; }
        public ICommand ShowCalculateSalaryView { get; }

        public ManagerViewModel()
        {
            _currentChildView = new BaseViewModel();
            _caption = "";
            _icon = new PackIconKind();
            _crtManager = new Manager();

            LoadUserCurrentData();
            ShowHomeView = new RelayCommand<object>(ExecuteShowHomeViewCommand);
            ShowUserInforView = new RelayCommand<object>(ExecuteShowUserInforViewCommand);
            ShowManageClassroomView = new RelayCommand<object>(ExecuteShowManageClassroomViewCommand);
            ShowAddStudentView = new RelayCommand<object>(ExecuteShowAddStudentViewCommand);
            ShowAddTeacherView = new RelayCommand<object>(ExecuteShowAddTeacherViewCommand);
            ShowCalculateSalaryView = new RelayCommand<object>(ExecuteShowCalculateSalaryViewCommand);

            //Default view
            ExecuteShowUserInforViewCommand(null);
        }

        private void LoadUserCurrentData()
        {
            _crtManager = CurrentUser.Instance.CurrentManager;
        }

        public BaseViewModel CurrentChildView
        {
            get => _currentChildView;
            set
            {
                _currentChildView = value;
                OnPropertyChanged(nameof(CurrentChildView));
            }
        }

        public string Caption
        {
            get => _caption;
            set
            {
                _caption = value;
                OnPropertyChanged(nameof(Caption));
            }
        }

        public PackIconKind Icon
        {
            get => _icon;
            set
            {
                _icon = value;
                OnPropertyChanged(nameof(Icon));
            }
        }

        public Manager CrtManager
        {
            get => _crtManager;
            set
            {
                _crtManager = value;
                OnPropertyChanged(nameof(CrtManager));
            }
        }

        private void ExecuteShowHomeViewCommand(object? p)
        {
            CurrentChildView = new HomeViewModel();
            Caption = "Dashboard";
            Icon = PackIconKind.Home;
        }

        private void ExecuteShowManageClassroomViewCommand(object? p)
        {
            CurrentChildView = new ManageClassroomViewModel();
            Caption = "Manage classroom";
            Icon = PackIconKind.GoogleClassroom;
        }

        private void ExecuteShowAddStudentViewCommand(object? p)
        {
            CurrentChildView = new AddStudentViewModel();
            Caption = "Add student";
            Icon = PackIconKind.AccountSchoolOutline;
        }

        private void ExecuteShowAddTeacherViewCommand(object? p)
        {
            CurrentChildView = new AddTeacherViewModel();
            Caption = "Add teacher";
            Icon = PackIconKind.HumanMaleBoard;
        }

        private void ExecuteShowUserInforViewCommand(object? p)
        {
            CurrentChildView = new UserInforViewModel();
            Caption = "User information";
            Icon = PackIconKind.AccountBoxOutline;
        }
        private void ExecuteShowCalculateSalaryViewCommand(object? p)
        {
            CurrentChildView = new CalculateSalaryViewModel();
            Caption = "Calculate Salary";
            Icon = PackIconKind.Cash;
        }
    }
}
