using EnglishCentreManagement.Database;
using EnglishCentreManagement.Model;
using EnglishCentreManagement.ViewModel.UserControl;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace EnglishCentreManagement.ViewModel.Dialog.DisplayList
{
    public class DisplayAllCourseViewModel : BaseViewModel
    {
        private Course selectedCourse;

        public Course SelectedCourse 
        { 
            get => selectedCourse; 
            set
            {
                selectedCourse = value;
                OnPropertyChanged(nameof(SelectedCourse));
            }
        }

        public List<Course> LstCourse { get => new CourseDAO().findAllCourse(); }

        public ICommand CommitSelectCourseCommand { get; }

        public DisplayAllCourseViewModel()
        {
            selectedCourse = new Course();
            CommitSelectCourseCommand = new RelayCommand<Window>(ExecuteCommitSelectCourseCommand);
        }

        private void ExecuteCommitSelectCourseCommand(Window obj)
        {
            obj.Close();
        }
    }
}
