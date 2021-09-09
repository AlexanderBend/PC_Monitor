using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.NetworkInformation;
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
    /// Логика взаимодействия для InternetConnection.xaml
    /// </summary>
    public partial class InternetConnection : UserControl
    {
        public InternetConnection()
        {
            InitializeComponent();

        }

        public static double CalcSpeed(string url)
        {
            WebClient wc = new WebClient();
            DateTime dt1 = DateTime.Now;
            byte[] data = wc.DownloadData(url);
            DateTime dt2 = DateTime.Now;
            return (data.Length * 8) / (dt2 - dt1).TotalSeconds;

        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

            Ping ping = new System.Net.NetworkInformation.Ping();
            PingReply pingReply = null;
            try
            {
                if ((UserServer.Text == ""))
                {
                    pingReply = ping.Send("yandex.com");
                }
                else
                {
                    pingReply = ping.Send(UserServer.Text);
                }
                if (pingReply.Status != IPStatus.TimedOut)
                {
                    PingMs.Text = "Пинг: " + Convert.ToString(pingReply.RoundtripTime) + " ms";
                    ServerName.Text = "Сервер: " + Convert.ToString(pingReply.Address);
                    MoreInfo.Text = " Status: " + Convert.ToString(pingReply.Status)+ "\n TTL: " + pingReply.Options.Ttl + "\n Фрагментирование: " + pingReply.Options.DontFragment + "\n Размер буфера:" + pingReply.Buffer.Length;
                }
                ConnectionSpeed.Text = Convert.ToString(Math.Round(CalcSpeed("http://yandex.com") / 1024 / 1024, 2)) + " Mbps";
            }
            catch
            {
                ConnectionSpeed.Text = "Нет \n соединения ";
            }
        }




    }
}
