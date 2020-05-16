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
using System.Resources;
using System.Timers;

namespace FlipFlopGame
{
    public partial class Window1 : Window
    {
        List<string> imgName;
        List<Button> btnList;
        DateTime time;
        int[] selectBtn = { -1, -1 };
        int score = 100;
        int open = 0;
        int compStatus = 0; //store how many matches have been found

        public Window1()
        {
            InitializeComponent();
            start();
        }

        public void start()
        {
            //store image names in random order
            //def = new Image();
            //def.Source = new BitmapImage(new Uri("resources/question-mark.png", UriKind.RelativeOrAbsolute));

            imgName = new List<string>();
            imgName.Add("resources/1.jpg");
            imgName.Add("resources/1.jpg");
            imgName.Add("resources/2.jpg");
            imgName.Add("resources/2.jpg");
            imgName.Add("resources/3.jpg");
            imgName.Add("resources/3.jpg");
            imgName.Add("resources/4.jpg");
            imgName.Add("resources/4.jpg");
            imgName.Add("resources/5.png");
            imgName.Add("resources/5.png");
            imgName.Add("resources/6.jpg");
            imgName.Add("resources/6.jpg");

            btnList = new List<Button> { b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11 };
            Random r = new Random();
            imgName = imgName.OrderBy(x => r.Next()).ToList();
            scr.Text = score.ToString();
            time = DateTime.ParseExact("00:00:00", "HH:mm:ss", null);
        }


        private async void resetBtn()   //flip card to default img
        {
            int ind1 = -1, ind2 = -1;
            ind1 = selectBtn[0];
            ind2 = selectBtn[1];

            await Task.Delay(200);

            Image def1 = new Image();
            def1.Source = new BitmapImage(new Uri("Resources/question-mark.png", UriKind.RelativeOrAbsolute));
            btnList[ind1].Content = def1;
            btnList[ind1].IsEnabled = true;

            Image def2 = new Image();
            def2.Source = new BitmapImage(new Uri("Resources/question-mark.png", UriKind.RelativeOrAbsolute));
            btnList[ind2].Content = def2;
            btnList[ind2].IsEnabled = true;
            open = 0;
        }

        private bool checkComplete()
        {
            if (compStatus == 6)
                return true;

            else
                return false;
        }

        private void Win()
        {
            string tm = time.ToString("mm:ss");
            if (tm[3] == '1')  //add bonus
                score += 20;
            else if (tm[3] == '2')
                score += 10;

            Window2 win = new Window2();
            win.score.Text = score.ToString();
            win.Show();
            this.Close();
        }

        private void match()
        {
            //match strings
            if ((imgName[selectBtn[0]]) == (imgName[selectBtn[1]]))
            {
                //imgName.RemoveAt(selectBtn[0]);
                //imgName.RemoveAt(selectBtn[1]);
                //btnList.RemoveAt(selectBtn[0]);
                //btnList.RemoveAt(selectBtn[1]);
                score += 10;
                scr.Text = score.ToString();
                compStatus++;
                if (checkComplete())
                    Win();
            }

            else
            {
                resetBtn();
            }

            open = 0;
            selectBtn[0] = -1;
            selectBtn[1] = -1;
        }

        private void btn_Click(object sender, RoutedEventArgs e)
        {
            if (open < 2)
            {
                Button curBtn = (Button)sender;
                Image image = new Image();

                int index = -1;
                index = btnList.IndexOf(curBtn);

                if (index >= 0 && index <= 11)
                {
                    image.Source = new BitmapImage(new Uri(imgName[index], UriKind.RelativeOrAbsolute));
                    curBtn.Content = image;
                    curBtn.IsEnabled = false; // disable the button
                    if (open == 0)
                        selectBtn[0] = index;
                    else if(open == 1)
                        selectBtn[1] = index;
                    open++;
                    if (open == 2)
                        match();
                }
            }

            time = time.AddSeconds(1);
            timer.Text = time.ToString("mm:ss");
        }
    }
}