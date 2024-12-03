using EnglishCentreManagement.Database;
using EnglishCentreManagement.Interfaces;
using EnglishCentreManagement.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace EnglishCentreManagement.ViewModel.UserControl
{
    public class DisplayRoomAvailableViewModel : BaseViewModel
    {
        private Room selectedRoom = new Room();
        private Classroom selectedClassroom = new Classroom();
        private List<Room> listRooms = Room.Rooms;

        private IClassRoomDao clsDao = new ClassRoomDao();


        public Room SelectedRoom
        { 
            get => selectedRoom; 
            set
            {
                selectedRoom = value;
                OnPropertyChanged(nameof(SelectedRoom));
            }
        }
        public Classroom SelectedClassroom 
        { 
            get => selectedClassroom; 
            set
            {
                selectedClassroom = value;
                OnPropertyChanged(nameof(SelectedClassroom));
                LoadRoomsStatus();
            }
        }
        public List<Room> ListRooms { get => listRooms; set => listRooms=value; }
        public ICommand CommitSelectRoomCommand { get; }

        public DisplayRoomAvailableViewModel() 
        {
            CommitSelectRoomCommand = new RelayCommand<Window>(CanExecuteCommitSelectRoomCommand, ExecuteCommitSelectRoomCommand);
        }

        private bool CanExecuteCommitSelectRoomCommand(Window obj)
        {
            if (selectedRoom.Status.Equals("Available"))
                return true;
            return false;
        }

        private void ExecuteCommitSelectRoomCommand(Window obj)
        {
            obj.Close();
        }

        private void LoadRoomsStatus()
        {
            List<Classroom> classRooms = clsDao.fillDataToListClassRoom(clsDao.getClassRoomDAO());

            foreach(Classroom classroom in classRooms)
            {
                if(selectedClassroom.IsHaveSameTime(classroom))
                {
                    new Room() { Name = classroom.RoomNum }.SetNotAvailabel(listRooms);
                }
            }
        }
    }
}
