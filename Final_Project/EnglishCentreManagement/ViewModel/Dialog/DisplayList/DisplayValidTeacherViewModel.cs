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
    public class DisplayValidTeacherViewModel : BaseViewModel
    {
        private Teacher selectedTeacher = new Teacher();
        private Classroom selectedClassroom = new Classroom();
        private List<Teacher> validTeachers = new List<Teacher>();


        public Teacher SelectedTeacher 
        { 
            get => selectedTeacher; 
            set
            {
                selectedTeacher = value;
                OnPropertyChanged(nameof(SelectedTeacher));
            }
        }
        public Classroom SelectedClassroom
        {
            get => selectedClassroom;
            set
            {
                selectedClassroom = value;
                OnPropertyChanged(nameof(SelectedTeacher));
                LoadValidTeachers();
            }
        }
        public List<Teacher> ValidTeachers { get => validTeachers; set => validTeachers=value; }

        public ICommand CommitSelectTeacherCommand { get; }

        public DisplayValidTeacherViewModel()
        {
            LoadValidTeachers();
            CommitSelectTeacherCommand = new RelayCommand<Window>((p)=>p.Close());
        }

        private void LoadValidTeachers()
        {
            validTeachers = new TeacherDAO().GetValidTeacherForAClass(SelectedClassroom);
        }
    }
}
