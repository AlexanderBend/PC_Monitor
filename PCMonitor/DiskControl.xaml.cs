using OpenHardwareMonitor.Hardware;
using System;
using System.Collections.Generic;
using System.IO;
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
    /// Логика взаимодействия для DiskControl.xaml
    /// </summary>
    public partial class DiskControl : UserControl
    {
        private static long GetSizeGB(long bytes)///Перевод в мегабайты
        {
            return bytes / 1024 / 1024 / 1024;
        }
        public DiskControl()
        {
            InitializeComponent();

            ManagementObjectSearcher searcher = new ManagementObjectSearcher("root\\CIMV2", "SELECT * FROM Win32_DiskDrive");
            double TotalMemory = 0; double TotalFreeMmory = 0;
            DriveInfo[] drives = DriveInfo.GetDrives();
            foreach (var drive in DriveInfo.GetDrives())
            {

                if (drive.DriveType == DriveType.Fixed && drive.IsReady)
                {
                    HDD_Configuration.Items.Add(string.Format("Name  — {0} \n  Total Size: {1} Gb \n  Free Memory: {2} Gb \n  Format: {3}  ", drive.Name, GetSizeGB(drive.TotalSize), GetSizeGB(drive.TotalFreeSpace), drive.DriveFormat));
                    TotalMemory += GetSizeGB(drive.TotalSize);
                    TotalFreeMmory += GetSizeGB(drive.TotalFreeSpace);
                    
                }
               

            }
            double percent = Math.Round((TotalFreeMmory / TotalMemory) * 100, 0);
            percent = 100 - percent;
            MemoryOccupy.Value = percent;
            MemoryOccupyNum.Content += percent + " %";
            MemoryOccupyNumMb.Content += TotalMemory - TotalFreeMmory + " Гб из " + TotalMemory;
            FreeMemotyNumMb.Content += TotalFreeMmory + " Гб";

            foreach (ManagementObject queryOS in searcher.Get())
            {
                HddDivice.Items.Add(string.Format("\nИмя: {0}", queryOS["Caption"]));
                HddDivice.Items.Add(string.Format("Модель: {0}", queryOS["Model"]));
                HddDivice.Items.Add(string.Format("ID: {0}", queryOS["DeviceID"]));
                HddDivice.Items.Add(string.Format("Байтов на сектор: {0}", queryOS["BytesPerSector"]));
                HddDivice.Items.Add(string.Format("Секторов на дорожку: {0}", queryOS["SectorsPerTrack"]));
                HddDivice.Items.Add(string.Format("Кол-во секторов: {0}", queryOS["TotalSectors"]));
                HddDivice.Items.Add(string.Format("Версия прошивки: {0}", queryOS["FirmwareRevision"]));
                HddDivice.Items.Add(string.Format("SCSI: {0}", queryOS["SCSIBus"]));
            }

          
        }
    }
}
