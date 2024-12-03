using EnglishCentreManagement.Model;
using EnglishCentreManagement.ViewModel.UserControl;
using MaterialDesignThemes.Wpf;
using System;
using System.Windows.Input;

namespace EnglishCentreManagement.ViewModel.MainView
{
    public class StudentViewModel : BaseViewModel
    {
        private BaseViewModel _currentChildView;
        private string _caption;
        private PackIconKind _icon;
        private Student _crtStudent;

        public ICommand ShowHomeView { get; }
        public ICommand ShowRegisterClassView { get; }
        public ICommand ShowYourClassView { get; }
        //public ICommand ShowYourTestView { get; }
        public ICommand ShowYourScheduleView { get; }
        public ICommand ShowUserInfoView { get; }

        public StudentViewModel()
        {
            _currentChildView = new BaseViewModel();
            _caption = "";
            _icon = new PackIconKind();
            _crtStudent = new Student();

            LoadCurrentUser();
            ShowHomeView = new RelayCommand<object>(ExecuteShowHomeViewModel);
            ShowRegisterClassView = new RelayCommand<object>(ExecuteShowRegisterClassView);
            ShowUserInfoView = new RelayCommand<object>(ExecuteShowUserInfoView);
            ShowYourClassView = new RelayCommand<object>(ExecuteYourClassView); 
            ShowYourScheduleView = new RelayCommand<object>(ExcuteShowYourScheduleView);

            ExecuteShowUserInfoView(null);
        }

        private void LoadCurrentUser()
        {
            _crtStudent = CurrentUser.Instance.CurrentStudent;
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

        public Student CrtStudent
        {
            get => _crtStudent;
            set
            {
                _crtStudent = value;
                OnPropertyChanged(nameof(CrtStudent));
            }
        }

        private void ExecuteShowHomeViewModel(object? obj)
        {
            CurrentChildView = new HomeViewModel();
            Caption = "Dashboard";
            Icon = PackIconKind.Home;
        }

        private void ExecuteShowRegisterClassView(object obj)
        {

            CurrentChildView = new RegisterViewModel();
            Caption = "Register class";
            Icon = PackIconKind.ClipboardEditOutline;
        }

        private void ExecuteYourClassView(object obj)
        {
            CurrentChildView = new YourClassViewModel();
            Caption = "Your Class";
            Icon = PackIconKind.ClipboardEditOutline;
        }
        private void ExcuteShowYourScheduleView(object obj)
        {
            CurrentChildView = new ControlScheduleViewModel();
            Caption = "Schedule";
            Icon = PackIconKind.GiftOutline;
        }

        private void ExecuteShowUserInfoView(object? obj)
        {
            CurrentChildView = new UserInforViewModel();
            Caption = "User information";
            Icon = PackIconKind.AccountBoxOutline;
        }
    }
}
