using EnglishCentreManagement.Database;
using EnglishCentreManagement.Interfaces;
using EnglishCentreManagement.Model;
using EnglishCentreManagement.ViewModel.UserControl;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnglishCentreManagement.ViewModel.Dialog.DisplayList
{
    public class DisplayStudentTranscriptsViewModel : BaseViewModel
    {
        private Classroom currentClassroom = new Classroom();
        private FinalResult result = new FinalResult();

        private IFinalResultDAO finalResultDAO = new FinalResultDAO();

        public Classroom CurrentClassroom 
        { 
            get => currentClassroom; 
            set
            {
                currentClassroom = value;
                LoadFinalResult();
                OnPropertyChanged(nameof(CurrentClassroom));
            }
        }
        public FinalResult Result 
        { 
            get => result; 
            set
            {
                result = value;
                OnPropertyChanged(nameof(Result));
            }
        }

        public DisplayStudentTranscriptsViewModel() { }

        private void LoadFinalResult()
        {
            result = finalResultDAO.GetFinalResult(CurrentUser.Instance.CurrentStudent.Enter_Infor.ID, currentClassroom.IDClassroom);
        }
    }
}
