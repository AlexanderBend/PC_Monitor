using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Management;


namespace PCMonitor
{
    /// <summary>
    /// Логика взаимодействия для PCConfiguration.xaml
    /// </summary>
    public partial class PCConfiguration : UserControl
    {
        public PCConfiguration()
        {
            InitializeComponent();
        }

        private void UserControl_Initialized(object sender, EventArgs e)
        {

            ManagementObjectSearcher searcher0 = new ManagementObjectSearcher("root\\CIMV2", "SELECT * FROM Win32_OperatingSystem");
            ManagementObjectSearcher searcher1 = new ManagementObjectSearcher("root\\CIMV2", "SELECT * FROM Win32_Processor");
            ManagementObjectSearcher searcher2 = new ManagementObjectSearcher("SELECT TotalVisibleMemorySize,FreePhysicalMemory FROM Win32_OperatingSystem");
            ManagementObjectSearcher searcher3 = new ManagementObjectSearcher("root\\CIMV2", "SELECT * FROM Win32_VideoController");

            ManagementObjectSearcher searcher = new ManagementObjectSearcher(@"root\WMI", "SELECT * FROM MSStorageDriver_ATAPISmartData WHERE Active=True");

            foreach (ManagementObject queryOS in searcher0.Get())
            {
                PC_Configuration.Items.Add(string.Format("Имя ПК: {0}", PCName.Content = Environment.MachineName));
                PC_Configuration.Items.Add(string.Format("Имя пользователя: {0}", userName.Content = Environment.UserName));
                PC_Configuration.Items.Add(string.Format("Операционная система (ОС): {0}", queryOS["Caption"]));
                PC_Configuration.Items.Add(string.Format("Версия ОС: {0}", queryOS["Version"]));
                PC_Configuration.Items.Add(string.Format("Тип ОС: {0}", queryOS["OSArchitecture"]));
                PC_Configuration.Items.Add(string.Format("Логические диски : {0}", String.Join(", ", Environment.GetLogicalDrives()) ));
                chipBit.Content = queryOS["OSArchitecture"];
            }
            foreach (ManagementObject queryOS in searcher1.Get())
            {
                PC_Configuration.Items.Add(string.Format("Процессор: {0}", queryOS["Name"]));
                PC_Configuration.Items.Add(string.Format("Количество ядер CPU : {0}", queryOS["NumberOfCores"]));
                PC_Configuration.Items.Add(string.Format("Частота CPU: {0} GHz", queryOS["CurrentClockSpeed"]));

            }
            foreach (ManagementObject queryOS in searcher2.Get())
            {
                PC_Configuration.Items.Add(string.Format("Количество ОЗУ: {0} Mb", Convert.ToInt64(queryOS["TotalVisibleMemorySize"]) / 1024));
     
            }
          
            foreach (ManagementObject queryOS in searcher3.Get())
            {
                PC_Configuration.Items.Add(string.Format("Имя GPU (графический процессор): {0}", queryOS["Caption"]));
            }
        }
    }
}
