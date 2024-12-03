using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnglishCentreManagement.Model
{
    public class Room
    {
        private string name;
        private string status;

        public string Name { get => name; set => name = value; }
        public string Status { get => status; set => status=value; }
        public Room() 
        {
            name = "";
            status = "";
        }

        public static List<Room> Rooms = new List<Room>
        {
            new Room() {Name = "101", Status = "Available"},
            new Room() {Name = "102", Status = "Available"},
            new Room() {Name = "103", Status = "Available"},
            new Room() {Name = "201", Status = "Available"},
            new Room() {Name = "202", Status = "Available"},
            new Room() {Name = "203", Status = "Available"},
            new Room() {Name = "301", Status = "Available"},
            new Room() {Name = "302", Status = "Available"},
            new Room() {Name = "303", Status = "Available"},
            new Room() {Name = "401", Status = "Available"},
            new Room() {Name = "402", Status = "Available"},
            new Room() {Name = "403", Status = "Available"}
        };

        public void SetNotAvailabel(List<Room> rooms)
        {
            foreach (Room room in rooms)
            {
                if(room.name.Equals(this.name.Trim()))
                {
                    room.status = "Not available";
                }
            }
        }
    }
}
