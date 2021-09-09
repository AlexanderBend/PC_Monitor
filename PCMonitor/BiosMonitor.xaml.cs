using OpenHardwareMonitor.Hardware;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Management;
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


namespace PCMonitor
{
    /// <summary>
    /// Логика взаимодействия для BiosMonitor.xaml
    /// </summary>
    /// 

    public partial class BiosMonitor : UserControl
    {
        public BiosMonitor()
        {
            InitializeComponent();
            try
            {
                ManagementObjectSearcher searcher = new ManagementObjectSearcher("root\\CIMV2", "SELECT * FROM Win32_BIOS WHERE EmbeddedControllerMajorVersion = 255");
                ManagementObjectSearcher searcher1 = new ManagementObjectSearcher("root\\CIMV2", "SELECT * FROM Win32_BootConfiguration");
                ConnectionOptions options = new ConnectionOptions();
                options.Impersonation = System.Management.ImpersonationLevel.Impersonate;
                ManagementScope scope = new ManagementScope("\\\\.\\root\\cimv2", options);
                scope.Connect();
                ObjectQuery query = new ObjectQuery("SELECT * FROM Win32_Fan");
                ManagementObjectSearcher searcherFAN = new ManagementObjectSearcher(scope, query);

                foreach (ManagementObject queryOS in searcher.Get())
                {
                    BIOSConfiguration.Items.Add(string.Format("Дата установки BIOS: {0}", queryOS["Caption"]));
                    BIOSConfiguration.Items.Add(string.Format("Язык BIOS: {0}", queryOS["Description"]));
                    BIOSConfiguration.Items.Add(string.Format("Производитель: {0}", queryOS["Manufacturer"]));
                    BIOSConfiguration.Items.Add(string.Format("Основной BIOS: {0}", queryOS["PrimaryBIOS"]));
                    BIOSConfiguration.Items.Add(string.Format("Версия: {0}", queryOS["Version"]));
                    BIOSConfiguration.Items.Add(string.Format("Статус: {0}", queryOS["Status"]));
                }
                foreach (ManagementObject queryOS in searcher1.Get())
                {
                    BootConfiguration.Items.Add(string.Format("Подпись: {0}", queryOS["Caption"]));
                    BootConfiguration.Items.Add(string.Format("Путь конфигурации: {0}", queryOS["ConfigurationPath"]));
                    BootConfiguration.Items.Add(string.Format("Скретч-каталог: \n{0}", queryOS["ScratchDirectory"]));
                    BootConfiguration.Items.Add(string.Format("Временный каталог:\n{0}", queryOS["TempDirectory"]));
                }
                ManagementObjectCollection queryCollection = searcherFAN.Get();
                foreach (ManagementObject m in queryCollection)
                {
                    FanConfiguration.Items.Add(string.Format("Активность: {0}", m["ActiveCooling"]));
                    FanConfiguration.Items.Add(string.Format("Уровень доступа: {0}", m["Availability"]));
                    FanConfiguration.Items.Add(string.Format("Устройство: {0}", m["DeviceID"]));
                    FanConfiguration.Items.Add(string.Format("Имя: {0}", m["Name"]));
                    FanConfiguration.Items.Add(string.Format("Статус: {0}", m["StatusInfo"]));
                }
                Computer thisComputer = new Computer();
                thisComputer.MainboardEnabled = true;
                thisComputer.CPUEnabled = true;
                thisComputer.Open();
                foreach (var hardware in thisComputer.Hardware)
                {
                    foreach (var subhardware in hardware.SubHardware)
                    {
                        subhardware.Update();
                        if (subhardware.Sensors.Length > 0)
                        {
                            foreach (var sensor in subhardware.Sensors)
                            {
                                if (sensor.SensorType == SensorType.Fan && sensor.Name.Equals("Fan #2", StringComparison.OrdinalIgnoreCase))
                                {
                                    CpuFansSpeed.Text = Convert.ToString((int)(float)sensor.Value) + " RPM";

                                }
                            }
                        }
                    }
                    break;
                }

            }
            catch {
                MessageBox.Show("Отключите UAC");
            }
            
        }
    }
}
