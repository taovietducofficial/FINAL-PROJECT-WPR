﻿using EnglishCentreManagement.ViewModel;
using EnglishCentreManagement.ViewModel.UserControl;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace EnglishCentreManagement.UserControlProject
{
    /// <summary>
    /// Interaction logic for ControlScheduleUC.xaml
    /// </summary>
    public partial class ControlScheduleUC : UserControl
    {
        public ControlScheduleUC()
        {
            InitializeComponent(); 
            DataContext = new ControlScheduleViewModel();
        }
        private void dtgSchedule_SelectionChanged(object sender, SelectionChangedEventArgs e)
        { }
    }
}
