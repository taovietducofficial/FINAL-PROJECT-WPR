using EnglishCentreManagement.Database;
using EnglishCentreManagement.Dialog.DisplayList;
using EnglishCentreManagement.Interfaces;
using EnglishCentreManagement.Model;
using EnglishCentreManagement.Model.DisplayModel;
using EnglishCentreManagement.ViewModel.Dialog.DisplayList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace EnglishCentreManagement.ViewModel.UserControl
{
    public class YourTestInClassroomViewModel : BaseViewModel
    {
        private Classroom currentClassroom = new Classroom();
        private List<TestsInWeek> tests = new List<TestsInWeek>();

        public IResultDAO resultDAO = new ResultDAO();

        public ICommand ShowFinalResultCommand { get; }

        public Classroom CurrentClassroom 
        { 
            get => currentClassroom; 
            set
            {
                currentClassroom = value;
                LoadTests();
                OnPropertyChanged(nameof(CurrentClassroom));    
            }
        }

        public List<TestsInWeek> Tests 
        { 
            get => tests; 
            set
            {
                tests = value;
                OnPropertyChanged(nameof(Tests));
            }
        }

        public YourTestInClassroomViewModel()
        {
            ShowFinalResultCommand = new RelayCommand<object>(ExecuteShowFinalResultCommand);
        }

        private void ExecuteShowFinalResultCommand(object obj)
        {
            Window dialog = new DisplayStudentTranscripts();
            ((DisplayStudentTranscriptsViewModel)dialog.DataContext).CurrentClassroom = this.CurrentClassroom;
            dialog.Show();
        }

        public void LoadTests()
        {
            Tests = resultDAO.getTestsInWeek(CurrentClassroom);
        }
    }
}
