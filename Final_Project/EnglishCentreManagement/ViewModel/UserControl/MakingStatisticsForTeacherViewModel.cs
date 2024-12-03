using EnglishCentreManagement.Database;
using EnglishCentreManagement.Interfaces;
using EnglishCentreManagement.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnglishCentreManagement.ViewModel.UserControl
{
    public class MakingStatisticsForTeacherViewModel : BaseViewModel
    {
        private Statistics _crtStatistics = new Statistics();
        private Teacher _crtTeacher = new Teacher();

        private IStatisticsDao statDao = new StatisticsDAO();

        public Statistics CrtStatistics { get => _crtStatistics; set => _crtStatistics=value; }

        public MakingStatisticsForTeacherViewModel()
        {
            LoadCurrentTeacher();
            LoadStatistics();
        }

        private void LoadCurrentTeacher()
        {
            _crtTeacher = CurrentUser.Instance.CurrentTeacher;
        }

        private void LoadStatistics()
        {
            CrtStatistics = statDao.CreateStatistics(_crtTeacher.Enter_Infor.ID);
        }
    }
}
