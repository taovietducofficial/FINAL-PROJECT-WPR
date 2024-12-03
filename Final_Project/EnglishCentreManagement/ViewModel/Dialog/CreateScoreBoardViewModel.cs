using EnglishCentreManagement.Database;
using EnglishCentreManagement.Interfaces;
using EnglishCentreManagement.Model;
using EnglishCentreManagement.ViewModel.UserControl;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace EnglishCentreManagement.ViewModel.Dialog
{
    public class CreateScoreBoardViewModel : BaseViewModel
    {
        private string _idtest;
        private List<TestResult> _results = new List<TestResult>();

        private IResultDAO resultDAO = new ResultDAO();

        public ICommand UpdateScoreBoardCommand { get; }

        public string IDTest { get => _idtest; set => _idtest = value; }
        public bool CanReadOnly 
        {
            get
            {
                if (CurrentUser.Instance.isTeacher())
                    return false;
                else
                    return true;
            }
        }
        public List<TestResult> Results
        {
            get => _results;
            set
            {
                _results = value;
                OnPropertyChanged(nameof(Results));
            }
        }

        public CreateScoreBoardViewModel(string idTest)
        {
            _idtest = idTest;
            LoadTestResult();
            UpdateScoreBoardCommand = new RelayCommand<object>(CanExcuteUpdateScoreBoardCommand, ExcuteUpdateScoreBoardCommand);
        }

        private bool CanExcuteUpdateScoreBoardCommand(object obj)
        {
            if (CanReadOnly)
                return false;
            return true;
        }

        private void LoadTestResult()
        {
            Results = resultDAO.getResultByIdTest(IDTest);
        }

        private void ExcuteUpdateScoreBoardCommand(object obj)
        {
            resultDAO.UpdateTestResultByList(Results);
            LoadTestResult();
        }
    }
}
