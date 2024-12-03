using EnglishCentreManagement.Database;
using EnglishCentreManagement.Interfaces;
using System;
using System.Collections.Generic;
using System.Windows;

namespace EnglishCentreManagement.Model
{
    public class Classroom : IValueObject
    {
        private string idTeacher;
        private string idClassroom;
        private string roomNum;
        private int maxNumStudent;
        private string idCourse;
        private DateTime startingDate;
        private DateTime endingDate;
        private string studyDate;
        private string idShift;

        public string IDTeacher { get => idTeacher; set => idTeacher=value; }
        public string IDClassroom { get => idClassroom; set => idClassroom = value; }
        public string RoomNum { get => roomNum; set => roomNum = value; }
        public int MaxNumStudent { get => maxNumStudent; set => maxNumStudent = value; }
        public string IDCourse { get => idCourse; set => idCourse=value; }
        public DateTime StartingDate { get => startingDate; set => startingDate = value; }
        public DateTime EndingDate { get => endingDate; set => endingDate = value; }
        public string StudyDate { get => studyDate; set => studyDate=value; }
        public string IDShift { get => idShift; set => idShift=value; }

        public Teacher TeacherIns { get => new TeacherDAO().getByID(IDTeacher); }
        public Course CourseIns { get => new CourseDAO().findCourseByID(IDCourse); }
        public Shift ShiftIns { get => new ShiftDAO().findShiftByID(IDShift); }

        public Classroom()
        {
            this.idTeacher = "";
            this.idClassroom = "";
            this.roomNum = "";
            this.idCourse = "";
            this.studyDate = "";
            this.startingDate = DateTime.Now;
            this.endingDate = DateTime.Now;
            this.maxNumStudent = 20;
            this.idShift = "";
        }

        public bool IsHaveNullValue()
        {
            if(String.IsNullOrEmpty(idClassroom.Trim()) ||  String.IsNullOrEmpty(roomNum.Trim()) || String.IsNullOrEmpty(idCourse.Trim()) || String.IsNullOrEmpty(studyDate.Trim()) || String.IsNullOrEmpty(idShift.Trim()))
                return true;
            return false;
        }

        public bool IsHaveSameTimeAsTheList(List<Classroom> classRooms)
        {
            foreach(Classroom classroom in classRooms)
                if(IsHaveSameTime(classroom))
                    return true;

            return false;
        }

        public bool IsHaveSameTime(Classroom classroom)
        {
            DateOnly StartDate1 = new DateOnly(this.startingDate.Year, this.startingDate.Month, this.startingDate.Day);
            DateOnly EndDate1 = new DateOnly(this.endingDate.Year, this.endingDate.Month, this.endingDate.Day);
            DateOnly StartDate2 = new DateOnly(classroom.startingDate.Year, classroom.startingDate.Month, classroom.startingDate.Day);
            DateOnly EndDate2 = new DateOnly(classroom.endingDate.Year, classroom.endingDate.Month, classroom.endingDate.Day);
            if (StartDate1 <= EndDate2 && StartDate2 <= EndDate1)
                if (this.StudyDate.Equals(classroom.StudyDate))
                    if (this.idShift.Equals(classroom.IDShift))
                        return true;
            return false;
        }
    }
}
