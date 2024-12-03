using System;

namespace EnglishCentreManagement.Model
{
    public class Notice
    {
        private Person sender;
        private Person receiver;
        private string content;

        public Person Sender { get => sender; set => sender=value; }
        public Person Receiver { get => receiver; set => receiver=value; }
        public string Content { get => content; set => content = value; }

        public Notice(Person Sender, Person Receiver, string Content)
        {
            this.sender = Sender;
            this.receiver = Receiver;
            this.content = Content;
        }
    }
}
