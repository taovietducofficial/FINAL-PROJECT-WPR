namespace EnglishCentreManagement.Model
{
    public class Course     
    {
        private string idCourse;
        private string nameCourse;
        private double inputLevel;
        private double outputLevel;
        private int numOfWeek;
        private double levelOfTeacher;

        public string IDCourse { get => idCourse; set => idCourse = value; }
        public string NameCourse { get => nameCourse; set => nameCourse = value; }
        public double InputLevel { get => inputLevel; set => inputLevel = value; }
        public double OutputLevel { get => outputLevel; set => outputLevel = value; }
        public int NumOfWeek { get => numOfWeek; set => numOfWeek = value; }
        public double LevelOfTeacher { get =>  levelOfTeacher; set => levelOfTeacher=value; }

        public Course(string IDCourse, string NameCourse, int NumOfWeek, double InputLevel
            , double OutputLevel, double LevelOfTeacher)
        {
            this.idCourse = IDCourse;
            this.nameCourse = NameCourse;
            this.numOfWeek = NumOfWeek;
            this.inputLevel = InputLevel;
            this.outputLevel = OutputLevel;
            this.levelOfTeacher = LevelOfTeacher;
        }

        public Course() 
        {
            idCourse = "";
            nameCourse = "";
        }

        public bool isNullValue()
        {
            if (idCourse == "" || nameCourse == "")
                return true;
            return false;
        }

    }
}
