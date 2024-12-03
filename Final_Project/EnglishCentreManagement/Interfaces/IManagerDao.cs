using EnglishCentreManagement.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnglishCentreManagement.Interfaces
{
    public interface IManagerDao
    {
        void Add(Manager mng);
        void Delete(Manager mng);
        void Update(Manager mng);
        Manager getById(string id);
    }
}
