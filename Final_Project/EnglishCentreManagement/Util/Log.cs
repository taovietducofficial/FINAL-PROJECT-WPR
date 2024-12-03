using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnglishCentreManagement.Util
{
    public class Log
    {
        private static Log instance;
        private TraceSource traceSource;

        public static Log Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new Log();
                }
                return instance;
            }
        }

        private Log()
        {
            traceSource = new TraceSource("Custom Log");
            traceSource.Switch.Level = SourceLevels.Information;
            traceSource.Listeners.Add(new TextWriterTraceListener("log.txt"));
        }

        public void Information(string tag, string message)
        {
            traceSource.TraceInformation($"[TAG='{tag}', Time='{DateTime.Now}', MESSAGE='{message}']");
        }

        public void Error(string tag, string message)
        {
            traceSource.TraceEvent(TraceEventType.Warning, 0, $"[TAG='{tag}', Time='{DateTime.Now}', MESSAGE='{message}']");
        }
    }
}
