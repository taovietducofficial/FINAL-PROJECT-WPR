using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace EnglishCentreManagement.ViewModel.UserControl
{
    public class ControlBarViewModel
    {
        public ICommand CloseWindowCommand { get; set; }

        public ControlBarViewModel()
        {
            CloseWindowCommand = new RelayCommand<Window>((p) => { p.Close(); });
        }
    }
}
