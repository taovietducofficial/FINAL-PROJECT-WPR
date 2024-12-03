using EnglishCentreManagement.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnglishCentreManagement.Interfaces
{
    public interface IEnterprise_infoDAO
    {
        void Add(Enterprise_Infor enterprise_Infor);
        void Delete(Enterprise_Infor enterprise_Infor);
        void Update(Enterprise_Infor enterprise_Infor);
        bool AuthenticateEnterpriseInfor(string username, string password);
        string getRole(string userName);
        Enterprise_Infor getById(string id);
        Enterprise_Infor getByUserName(string userName, string password);
        IEnumerable<Enterprise_Infor> getAll();
    }
}
