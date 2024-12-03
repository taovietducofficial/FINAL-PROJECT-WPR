using EnglishCentreManagement.Database;
using EnglishCentreManagement.Interfaces;
using EnglishCentreManagement.Model;
using EnglishCentreManagement.ViewModel.UserControl;
using MaterialDesignThemes.Wpf;
using System;
using System.Windows.Input;

namespace EnglishCentreManagement.ViewModel.MainView
{
    public class TeacherViewModel : BaseViewModel
    {
        private BaseViewModel _currentChildView;
        private string _caption;
        private PackIconKind _icon;
        private Teacher _crtTeacher;

        private IEnterprise_infoDAO enterprise_InfoDAO = new Enterprise_infoDAO();

        public ICommand ShowHomeView { get; }
        public ICommand ShowYourClassView { get; }
        public ICommand ShowYourCalendarView { get; }
        public ICommand ShowUserInforView { get; }

        public TeacherViewModel()
        {
            _currentChildView = new BaseViewModel();
            _caption = "";
            _icon = new PackIconKind();
            _crtTeacher = new Teacher();

            LoadUserCurrentData();
            ShowHomeView = new RelayCommand<object>(ExecuteShowHomeViewCommand);
            ShowYourClassView = new RelayCommand<object>(ExcuteShowYourClassView);
            ShowYourCalendarView = new RelayCommand<object>(ExecuteShowYourCalendarView);
            ShowUserInforView = new RelayCommand<object>(ExecuteShowUserInforViewCommand);

            //Default view
            ExecuteShowUserInforViewCommand(null);
        }

        private void LoadUserCurrentData()
        {
            _crtTeacher = CurrentUser.Instance.CurrentTeacher;
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

        public Teacher CrtTeacher
        {
            get => _crtTeacher;
            set
            {
                _crtTeacher = value;
                OnPropertyChanged(nameof(CrtTeacher));
            }
        }

        private void ExecuteShowHomeViewCommand(object? p)
        {
            CurrentChildView = new HomeViewModel();
            Caption = "Dashboard";
            Icon = PackIconKind.Home;
        }

        private void ExcuteShowYourClassView(object obj)
        {
            CurrentChildView = new ManageTeacherClassRoomViewModel();
            Caption = "Your class";
            Icon = PackIconKind.ClipboardEditOutline;
        }
        private void ExecuteShowYourCalendarView(object obj)
        {
            CurrentChildView= new CalendarTeachingViewModel();
            Caption = "Calendar";
            Icon= PackIconKind.Calendar;
        }

        private void ExecuteShowUserInforViewCommand(object? p)
        {
            CurrentChildView = new UserInforViewModel();
            Caption = "User information";
            Icon = PackIconKind.AccountBoxOutline;
        }

    }
}

