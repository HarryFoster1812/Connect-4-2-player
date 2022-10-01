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

namespace Connect4
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window

    {
        Image[] images;
        public MainWindow()
        {
            InitializeComponent();
            // Creates an array of all the images that a token can be set to
            Image[] value = { a, b, c, d, e, f, a1, b1, c1, d1, e1, f1, a2, b2, c2, d2, e2, f2, a3, b3, c3, d3, e3, f3, a4, b4, c4, d4, e4, f4, a5, b5, c5, d5, e5, f5, a6, b6, c6, d6, e6, f6 };
            images = value;

        }
        // Loads the images of the counters, (blank when the game resets)
        BitmapImage blue = new BitmapImage(new Uri("C:\\Users\\17HFoster\\OneDrive - Bury Grammar Schools\\A level\\Computer science\\Connect4\\Connect4\\Blue token.png"));
        BitmapImage red = new BitmapImage(new Uri("C:\\Users\\17HFoster\\OneDrive - Bury Grammar Schools\\A level\\Computer science\\Connect4\\Connect4\\Yellow token.png"));
        BitmapImage blank = new BitmapImage(new Uri("C:\\Users\\17HFoster\\OneDrive - Bury Grammar Schools\\A level\\Computer science\\Connect4\\Connect4\\Blank png.png"));


        int player = 0;
        // 2d array to represent the board (7x6)
        int[,] board = { { 0, 0, 0, 0, 0, 0}, { 0, 0, 0, 0, 0, 0}, { 0, 0, 0, 0, 0, 0}, { 0, 0, 0, 0, 0, 0}, { 0, 0, 0, 0, 0, 0}, { 0, 0, 0, 0, 0, 0}, { 0, 0, 0, 0, 0, 0 } };

        public int turn() {
            // find which players turn it is
            if ((player % 2) == 0) {
                player++;
                return 1;
            }
            player++;
            return 2;
        }

        public void endgame(int turn) {
            // reset all the components of the game and show a message to the winner
            player = 0;
            // set the buttons back to visible
            column1.Visibility = Visibility.Visible;
            column2.Visibility = Visibility.Visible;
            column3.Visibility = Visibility.Visible;
            column4.Visibility = Visibility.Visible;
            column5.Visibility = Visibility.Visible;
            column6.Visibility = Visibility.Visible;
            column7.Visibility = Visibility.Visible;
            // set all the values within the board to 0
            for (int i = 0; i < 7; i++) {
                for (int j = 0; j < 6; j++) {
                    board[i, j] = 0;
                }
            }

            foreach (Image i in images) {
                i.Source = blank;
            }
            // Display a winning or losing message and increment the score label
            if (turn == 1)
            {
                Bluescorelabel.Content = (int.Parse(Bluescorelabel.Content.ToString()) + 1).ToString();
                MessageBox.Show("Blue Player won");
            }
            else if (turn == 0) {
                MessageBox.Show("Draw, neither player won.");
            }
            else
            {
                MessageBox.Show("Yellow player won");
                Redscorelabel.Content = (int.Parse(Bluescorelabel.Content.ToString()) + 1).ToString();
            }
        }

        public bool checkwin(int column, int row, int turn) {
                // Check the column that the token was placed
                int counter = 0;
                for(int i=0; i < 6; i++) {
                    if (board[column,i] == turn) { 
                    counter++;
                    }
                    else { 
                    counter = 0;
                    }
                    if (counter == 4) { 
                    return true;
                
                }
                }

                counter = 0;
            // Check the row that the token was placed on
            for(int i=0; i < 7; i++) {
                    if (board[i,row] == turn) { 
                    counter++;
                    }
                    else { 
                    counter = 0;
                    }
                    if (counter == 4) { 
                    return true;
                
                    }
                }
               
                counter = 0;
            //Generate the coners of the diagonal so that we can recursively go down and check for four in a row

            int[,] coners = {{column,row},{column,row}};
           // top right coner
            while(coners[0,0]<6  && coners[0,1] < 5) {
                coners[0,0]++;
                coners[0,1]++;

            }

            // top left coner
            while (coners[1,0] > 0 && coners[1,1] < 5)
            {
                coners[1,0]--;
                coners[1, 1]++;

            }

            // Check the forward diagonal
            while (coners[0, 0] > -1 && coners[0, 1] > -1) {
                if (board[coners[0, 0], coners[0, 1]] == turn)
                {
                    counter++;
                }
                else {
                    counter = 0;
                }
                if (counter == 4) {
                    return true;
                }
                coners[0, 0]--;
                coners[0, 1]--;

            }
            counter = 0;
            // check the back diagonal
            while (coners[1, 0] < 7 && coners[1, 1] > -1)
            {
                if (board[coners[1, 0], coners[1, 1]] == turn)
                {
                    
                    counter++;
                }
                else
                {
                    counter = 0;
                }
                if (counter == 4)
                {
                    return true;
                }
                coners[1, 0]++;
                coners[1, 1]--;
                
            }

            return false;
        }

        private void column1_Click(object sender, RoutedEventArgs e)
        {
            int sendercolumn = int.Parse(((Button)sender).Tag.ToString()); // finds which button was pressed using the tag property
            int player1 = turn();
            int index = 0;
            for (int i=0; i < 6; i++) {

                if (board[sendercolumn, i] == 0) {
                    board[sendercolumn, i] = player1;
                    index = i;
                    break;
                }
                
            }
            if (index == 5) { // if the token is in the last row then we need to hide the drop button
                ((Button)sender).Visibility = Visibility.Hidden;
            }
            
            
            // set the colour of the token based off which player turn it is
            if (player1 == 1) 
            {
                images[index+6*(sendercolumn)].Source = blue;
            }
            else {
                images[index + 6 *(sendercolumn)].Source = red;
            }

            bool win = checkwin(sendercolumn, index, player1);
            if (win==true) {
                endgame(player1);
            }
            if (player == 42) { // 42 is the maximum amount of turns within the game so if it is ever reached then we know it is a draw
                endgame(0);
            }   
        }
    }
}
