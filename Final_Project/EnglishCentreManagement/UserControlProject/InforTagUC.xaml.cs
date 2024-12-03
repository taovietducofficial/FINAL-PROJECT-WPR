using EnglishCentreManagement.Model;
using EnglishCentreManagement.ViewModel;
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
    /// Interaction logic for InforTagUC.xaml
    /// </summary>
    public partial class InforTagUC : UserControl
    {
        public static readonly DependencyProperty IdClassroomProperty = DependencyProperty.Register("IdClassroom", typeof(string), typeof(InforTagUC), new PropertyMetadata(string.Empty));
        public static readonly DependencyProperty IdCourseProperty = DependencyProperty.Register("IdCourse", typeof(string), typeof(InforTagUC), new PropertyMetadata(string.Empty));
        public static readonly DependencyProperty NameTeacherProperty = DependencyProperty.Register("NameTeacher", typeof(string), typeof(InforTagUC), new PropertyMetadata(string.Empty));
        public static readonly DependencyProperty NumStudentProperty = DependencyProperty.Register("NumStudent", typeof(string), typeof(InforTagUC), new PropertyMetadata(string.Empty));
        public static readonly DependencyProperty RoomNumProperty = DependencyProperty.Register("RoomNum", typeof(string), typeof(InforTagUC), new PropertyMetadata(string.Empty));
        public static readonly DependencyProperty StartEndProperty = DependencyProperty.Register("StartEnd", typeof(string), typeof(InforTagUC), new PropertyMetadata(string.Empty));
        public static readonly DependencyProperty InputLevelProperty = DependencyProperty.Register("InputLevel", typeof(double), typeof(InforTagUC), new PropertyMetadata(0.0));
        public static readonly DependencyProperty MeetProperty = DependencyProperty.Register("Meet", typeof(string), typeof(InforTagUC), new PropertyMetadata(string.Empty));
        public static readonly DependencyProperty SubWidthProperty = DependencyProperty.Register("SubWidth", typeof(int), typeof(InforTagUC), new PropertyMetadata(0));

        public string IdClassroom
        {
            get { return (string)GetValue(IdClassroomProperty); }
            set { SetValue(IdClassroomProperty, value); }
        }

        public string IdCourse
        {
            get { return (string)GetValue(IdCourseProperty); }
            set { SetValue(IdCourseProperty, value); }
        }

        public string NameTeacher
        {
            get { return (string)GetValue(NameTeacherProperty); }
            set { SetValue(NameTeacherProperty, value); }
        }
        public string NumStudent
        {
            get { return (string)GetValue(NumStudentProperty); }
            set { SetValue(NumStudentProperty, value); }
        }
        public string RoomNum
        {
            get { return (string)GetValue(RoomNumProperty); }
            set { SetValue(RoomNumProperty, value); }
        }
        public string StartEnd
        {
            get { return (string)GetValue(StartEndProperty); }
            set { SetValue(StartEndProperty, value); }
        }
        public double InputLevel
        {
            get { return (double)GetValue(InputLevelProperty); }
            set { SetValue(InputLevelProperty, value); }
        }
        public string Meet
        {
            get { return (string)GetValue(MeetProperty); }
            set { SetValue(MeetProperty, value); }
        }

        public int SubWidth
        {
            get { return (int)GetValue(SubWidthProperty); }
            set { SetValue(SubWidthProperty, value); }
        }

        public InforTagUC()
        {
            InitializeComponent();
        }
    }
}
