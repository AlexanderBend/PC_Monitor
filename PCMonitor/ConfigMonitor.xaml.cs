using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Management;
using System.Text;
using System.Threading;
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
using OpenHardwareMonitor.Hardware;

namespace PCMonitor
{
    /// <summary>
    /// Логика взаимодействия для ConfigMonitor.xaml
    /// </summary>
    /// 

    public partial class ConfigMonitor : UserControl
    {

        public ConfigMonitor()
        {
            ManagementObjectSearcher searcher = new ManagementObjectSearcher(@"root\WMI", "SELECT * FROM MSAcpi_ThermalZoneTemperature");
            ManagementObjectSearcher searcher1 = new ManagementObjectSearcher("root\\CIMV2", "SELECT * FROM Win32_Processor");
            ManagementObjectSearcher searcher2 = new ManagementObjectSearcher("SELECT TotalVisibleMemorySize,FreePhysicalMemory FROM Win32_OperatingSystem");
            ManagementObjectSearcher searcher12 = new ManagementObjectSearcher("root\\CIMV2", "SELECT * FROM Win32_PhysicalMemory");
            InitializeComponent();

            foreach (ManagementObject queryObj in searcher1.Get())
            {
                CPUinfo.Items.Add(string.Format("Имя СPU: {0}", queryObj["Name"]));
                CPUinfo.Items.Add(string.Format("Кол-во ядер: {0}", queryObj["NumberOfCores"]));
                CPUinfo.Items.Add(string.Format("ID Процессора: {0}", queryObj["ProcessorId"]));
                CPUinfo.Items.Add(string.Format("Частота CPU: {0} GHz", queryObj["CurrentClockSpeed"]));
                CPUinfo.Items.Add(string.Format("Архитектура CPU: {0} ", queryObj["DataWidth"]));
                CPUinfo.Items.Add(string.Format("Описание объекта CPU:\n{0} ", queryObj["Description"]));
                CPUinfo.Items.Add(string.Format("Идентификатор CPU: {0} ", queryObj["DeviceID"]));
                CPUinfo.Items.Add(string.Format("Размер кэш-памяти CPU (L2): {0} ", queryObj["L2CacheSize"]));
                CPUinfo.Items.Add(string.Format("Размер кэш-памяти CPU (L3): {0} ", queryObj["L3CacheSize"]));
                CPUinfo.Items.Add(string.Format("Роль CPU: {0} ", queryObj["Role"]));
                CPUSoket.Text = Convert.ToString(queryObj["SocketDesignation"]);
            }
            ManagementObjectSearcher searcher11 = new ManagementObjectSearcher("root\\CIMV2", "SELECT * FROM Win32_VideoController");
            foreach (ManagementObject queryObj in searcher11.Get())
            {
                GPUinfo.Items.Add(string.Format("Название: {0}", queryObj["Caption"]));
                GPUinfo.Items.Add(string.Format("Полное название: {0}", queryObj["Description"]));
                GPUinfo.Items.Add(string.Format("Графический процессор: {0}", queryObj["VideoProcessor"]));
                GPUinfo.Items.Add(string.Format("Количество видеопамяти: {0} Mb", Convert.ToInt64(queryObj["AdapterRAM"]) / 1024 / 1024));
                GPUinfo.Items.Add(string.Format("Тип подключения: {0}", queryObj["AdapterDACType"]));
                GPUinfo.Items.Add(string.Format("Кол-во битов на пиксель: {0}", queryObj["CurrentBitsPerPixel"]));
                GPUinfo.Items.Add(string.Format("Резрешение: {0}x{1}", queryObj["CurrentHorizontalResolution"], queryObj["CurrentVerticalResolution"]));
                GPUinfo.Items.Add(string.Format("Версия драйвера: {0}", queryObj["DriverVersion"]));
            }

            foreach (ManagementObject queryObj in searcher12.Get())
            {
                RAM.Items.Add(string.Format("Номер занятого слота: {0}", queryObj["BankLabel"]));
                RAM.Items.Add(string.Format("Кол-во ОЗУ (планка): {0} GB", Math.Round(System.Convert.ToDouble(queryObj["Capacity"]) / 1024 / 1024 / 1024, 2)));
                RAM.Items.Add(string.Format("Частота: {0} МГц", queryObj["Speed"]));
                RAM.Items.Add(string.Format("Тип: {0} ", queryObj["Description"]));
                RAM.Items.Add(string.Format("Местонахождение: {0} ", queryObj["DeviceLocator"]));
                RAM.Items.Add(string.Format("Идентификационный номер: \n{0} ", queryObj["PartNumber"]));
            }
            foreach (ManagementObject queryObj in searcher2.Get())
            {
                RAM.Items.Add(string.Format("Количество свободной ОЗУ: {0}  Mb ", Convert.ToInt64(queryObj["FreePhysicalMemory"]) / 1024));
            }
            foreach (ManagementObject objcpu in searcher1.Get())
            {
                CPULoad.Text = Convert.ToString(objcpu["LoadPercentage"]) + "%";
            }


            Computer c = new Computer()
            {
                CPUEnabled = true
            };
            c.Open();
            foreach (var hardware in c.Hardware)
            {
                if (hardware.HardwareType == HardwareType.CPU)
                {
                    hardware.Update();
                    foreach (var sensors in hardware.Sensors)
                    {
                        if (sensors.SensorType == SensorType.Temperature)
                        {
                            if (sensors.Value.GetValueOrDefault() == 0)
                            {
                                CPUTemperature.Text = "For Admin";
                            }
                            else
                            {
                                CPUTemperature.Text = sensors.Value.GetValueOrDefault() + "°C";
                            }
                        }
                    }
                }
            }
         
        }




    }
}
