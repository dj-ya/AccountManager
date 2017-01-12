using System;
using System.Data.SQLite;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace AccountManager
{
    /// <summary>
    /// Логика взаимодействия для addAccountWindow.xaml
    /// </summary>
    public partial class AccountWindow : Window
    {
        public AccountWindow()
        {
            InitializeComponent();
        }

        private void saveAccount(object sender, RoutedEventArgs e)
        {
            TextBox id = (TextBox)accountForm.FindName("id");
            TextBox title = (TextBox)accountForm.FindName("title");
            TextBox url = (TextBox)accountForm.FindName("url");
            TextBox login = (TextBox)accountForm.FindName("login");
            TextBox password = (TextBox)accountForm.FindName("password");
            TextBox sort = (TextBox)accountForm.FindName("sort");
            string passwordEncrypt = Helper.Shifrovka(password.Text, Constants.DB_CRYPRO_KEY);
            TextBox comment = (TextBox)accountForm.FindName("comment");
            
            if(title.Text.Trim().Length > 0)
            { 
                SQLiteConnection connection = new SQLiteConnection(string.Format("Data Source={0};", Constants.DB_PATH + Constants.DB_NAME));
                connection.Open();
                if (id.Text.Trim().Length > 0 && Int32.Parse(id.Text) > 0)
                {
                    SQLiteCommand command = new SQLiteCommand("UPDATE 'account' SET title='" + title.Text + "',url = '" + url.Text + "',login='" + login.Text + "',password='" + passwordEncrypt + "',sort=" + Int32.Parse(sort.Text) + ",comment='" + comment.Text + "' WHERE id = '" + id.Text + "';", connection);
                    command.ExecuteNonQuery();
                }
                else
                {                 
                        SQLiteCommand command = new SQLiteCommand("INSERT INTO 'account' ('title','url','login','password', 'sort','comment') VALUES ('" + title.Text + "','" + url.Text + "','" + login.Text + "','" + passwordEncrypt + "','" + sort.Text + "','" + this.comment.Text + "');", connection);
                        command.ExecuteNonQuery();                  
                }        
                connection.Close();
                MainWindow mw = (MainWindow)Application.Current.MainWindow;
                mw.accountGrid.ItemsSource = mw.accountList();
                this.Close();
            }
            else
            {
                MessageBox.Show("Должно быть заполнено поле \"Название\"");
            }
        }

        private void checkDigit(object sender, System.Windows.Input.TextCompositionEventArgs e)
        {
            int val;
            if (!Int32.TryParse(e.Text, out val) || e.Text == " ")
            {
                e.Handled = true; // отклоняем ввод
            }
        }

        private void checkSpace(object sender, System.Windows.Input.KeyEventArgs e)
        {

            if (e.Key == Key.Space)
            {
                e.Handled = true; // если пробел, отклоняем ввод
            }
        }
    }
}
