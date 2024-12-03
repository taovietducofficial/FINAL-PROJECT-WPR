using EnglishCentreManagement.Database;
using EnglishCentreManagement.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace EnglishCentreManagement.ViewModel.UserControl
{
    public class UserInforViewModel : BaseViewModel
    {
        public Visibility IsSalaryVisible { get; set; }
        public long Salary { get; set; }
        public Person? CrtUser { get; set; }

        public UserInforViewModel()
        {
            IsSalaryVisible = Visibility.Hidden;
            if (CurrentUser.Instance.isStudent())
            {
                CrtUser = CurrentUser.Instance.CurrentStudent;
            }
            else if (CurrentUser.Instance.isTeacher())
            {
                CrtUser = CurrentUser.Instance.CurrentTeacher;
                Salary = ((Teacher)CrtUser).Salary;
                IsSalaryVisible = Visibility.Visible;
            }
            else if (CurrentUser.Instance.isManager())
            {
                CrtUser = CurrentUser.Instance.CurrentManager;
            }
        }
    }
}
