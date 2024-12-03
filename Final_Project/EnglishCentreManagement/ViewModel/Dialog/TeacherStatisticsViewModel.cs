using EnglishCentreManagement.Model.DisplayModel;
using EnglishCentreManagement.ViewModel.UserControl;
using LiveCharts.Wpf;
using LiveCharts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Windows;

namespace EnglishCentreManagement.ViewModel
{
    public class TeacherStatisticsViewModel : BaseViewModel
    {
        private TeacherSalary _currentTeacherSalary = new TeacherSalary();
        private SeriesCollection _seriesCollection = new SeriesCollection();

        public TeacherSalary CurrentTeacherSalary
        {
            get => _currentTeacherSalary;
            set
            {
                _currentTeacherSalary=value;
                OnPropertyChanged(nameof(CurrentTeacherSalary));
            }
        }
        public ICommand CancelCommand { get; }
        public SeriesCollection SeriesCollection
        {
            get => _seriesCollection;
            set
            {
                _seriesCollection=value;
                OnPropertyChanged(nameof(SeriesCollection));
            }
        }

        public TeacherStatisticsViewModel()
        {
            LoadChart();
            LoadSalary();
            CancelCommand=new RelayCommand<Window>(ExecuteCancelCommand);

        }

        private void ExecuteCancelCommand(Window obj)
        {
            CurrentTeacherSalary = new TeacherSalary();
            obj.Close();
        }

        public void LoadSalary()
        {
        }
        public void LoadChart()
        {
            double pass = _currentTeacherSalary.Statistics.GraduateRate;
            double fall = 100 - _currentTeacherSalary.Statistics.GraduateRate;
            SeriesCollection = new SeriesCollection()
            {
                new PieSeries
                {
                    Title="Pass",
                    Values=new ChartValues<double>{pass},
                    DataLabels=true,
                    Fill=System.Windows.Media.Brushes.Green,

                },
                new PieSeries
                {
                    Title="Fall",
                    Values=new ChartValues<double>{100-CurrentTeacherSalary.Statistics.GraduateRate},
                    DataLabels=true,
                    Fill=System.Windows.Media.Brushes.Red,
                },
            };
        }

    }
}
