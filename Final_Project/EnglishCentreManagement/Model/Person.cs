using EnglishCentreManagement.Interfaces;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Windows.Documents;

namespace EnglishCentreManagement.Model
{
    public class Person : IValueObject
    {
        private Enterprise_Infor enter_Infor = new Enterprise_Infor();
        private string namePerson;
        private DateTime dateBorn; 
        private string gender;
        private string address;
        private string phoneNum;
        private string identityCard;
        private string bankNumber;
        private double rankLevel;

        public Enterprise_Infor Enter_Infor { get => enter_Infor; set => enter_Infor = value; }
        public string NamePerson { get => namePerson; set => namePerson = value; }
        public DateTime DateBorn { get => dateBorn; set => dateBorn = value; }
        public string Gender { get => gender; set => gender = value; }
        public string Address { get => address; set => address = value; }
        public string PhoneNum { get => phoneNum; set => phoneNum = value; }
        public string IdentityCard { get => identityCard; set => identityCard = value; }
        public string BankNumber { get => bankNumber; set => bankNumber=value; }
        public double RankLevel { get => rankLevel; set => rankLevel=value; }

        public Person() 
        {
            namePerson = "";
            dateBorn = DateTime.Now;
            gender = "";
            address = "";
            phoneNum = "";
            identityCard = "";
            bankNumber = "";
        }
        
        public bool IsHaveNullValue()
        {
            if(string.IsNullOrEmpty(this.namePerson.Trim()) || string.IsNullOrEmpty(this.gender.Trim()) || string.IsNullOrEmpty(this.address.Trim()) || string.IsNullOrEmpty(this.identityCard.Trim())) 
                return true;
            return false;
        }

        public List<string> ListGender()
        {
            List<string> list = new List<string>();
            list.Add("Nam");
            list.Add("Nữ");
            return list;
        }

        public List<double> ListRankLevel()
        {
            List<double> list = new List<double>();
            list.Add(1);
            list.Add(1.5);
            list.Add(2);
            list.Add(2.5);
            list.Add(3);
            list.Add(3.5);
            list.Add(4);
            list.Add(4.5);
            list.Add(5);
            list.Add(5.5);
            list.Add(6);
            list.Add(6.5);
            list.Add(7);
            list.Add(7.5);
            list.Add(8);
            list.Add(8.5);
            list.Add(9);
            return list;
        }

        public virtual string AutogenerateID()
        {
            enter_Infor.ID = "";
            return enter_Infor.ID;
        }

    }
}
