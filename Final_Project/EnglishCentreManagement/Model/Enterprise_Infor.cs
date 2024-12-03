namespace EnglishCentreManagement.Model
{
    public class Enterprise_Infor
    {
        private string id;
        private string title;
        private string email;
        private string userName;
        private string password;

        public string ID { get => id; set => id = value; }
        public string Title { get => title; set => title = value; }
        public string Email { get => email; set => email = value; }
        public string UserName { get => userName; set => userName = value; }
        public string Password { get => password; set => password=value; }

        public Enterprise_Infor(string ID, string Title, string Email, string UserName, string Password)
        {
            this.id = ID;
            this.title = Title;
            this.email = Email;
            this.userName = UserName;
            this.password = Password;
        }

        public Enterprise_Infor()
        {
            id = "";
            title = "";
            email = "";
            userName = "";
            password = "";
        }
    }
}
