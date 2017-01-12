using System;
using System.Collections.Generic;
using System.IO;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Data.SQLite;
using System.Data.Common;

namespace AccountManager
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>

    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            this.Title += " v."+ System.Reflection.Assembly.GetExecutingAssembly().GetName().Version.ToString();

            DB db = new AccountManager.DB();
            db.checkBD(Constants.DB_PATH, Constants.DB_NAME);

            accountGrid.ItemsSource = this.accountList();
        }

        private void removeAccount(object sender, MouseButtonEventArgs e)
        {
            Account item = (Account)accountGrid.Items.GetItemAt(accountGrid.SelectedIndex);

            System.Data.SQLite.SQLiteConnection connection = new SQLiteConnection(string.Format("Data Source={0};", Constants.DB_PATH + Constants.DB_NAME));
            connection.Open();
            SQLiteCommand accountDelete = new SQLiteCommand("DELETE FROM 'account' WHERE id = " + item.id + " ; ", connection);
            accountDelete.ExecuteNonQuery();
            connection.Close();
            accountGrid.ItemsSource = this.accountList();
        }

        private void editAccount(object sender, MouseButtonEventArgs e)
        {
            Account item = (Account)accountGrid.Items.GetItemAt(accountGrid.SelectedIndex);
            if (item != null)
            {
                //Биндим данные тип Account к форме редактирования
                AccountWindow accountWnd = new AccountWindow();
                accountWnd.accountForm.DataContext = item;

                accountWnd.ShowDialog();

            }
        }

        public List<Account> accountList()
        {
            List<Account> accountList = new List<Account>();
            System.Data.SQLite.SQLiteConnection connection = new SQLiteConnection(string.Format("Data Source={0};", Constants.DB_PATH + Constants.DB_NAME));
            connection.Open();
            SQLiteCommand accountListCommand = new SQLiteCommand("SELECT * FROM 'account' ORDER BY sort ASC; ", connection);
            SQLiteDataReader reader = accountListCommand.ExecuteReader();
            foreach (DbDataRecord record in reader)
            {
                string passwordDecrypt = Helper.DeShifrovka(record["password"].ToString(), Constants.DB_CRYPRO_KEY);
                accountList.Add(new Account(Int32.Parse(record["id"].ToString()), record["title"].ToString(), record["url"].ToString(), record["login"].ToString(), passwordDecrypt, Int32.Parse(record["sort"].ToString()),record["comment"].ToString()));
            }
            connection.Close();
            return accountList;
        }

        private void ShowAccountWnd(object sender, RoutedEventArgs e)
        {
            AccountWindow accountWnd = new AccountWindow();
            accountWnd.ShowDialog();
        }

        private void showAbout(object sender, RoutedEventArgs e)
        {
            AboutWindow aboutWnd = new AboutWindow();
            aboutWnd.ShowDialog();
        }
        private void closeApp(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void accountGrid_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            TextBlock tb = e.OriginalSource as TextBlock;
            if(tb!=null) Clipboard.SetText(tb.Text);
        }

        private void openBrowser(object sender, MouseButtonEventArgs e)
        {
            Account item = (Account)accountGrid.Items.GetItemAt(accountGrid.SelectedIndex);
            string url = item.url.ToString();
            if (url.Length > 0)
            {
                if (url.IndexOf("http", StringComparison.Ordinal) == -1) url = "http://" + url;
                System.Diagnostics.Process.Start(url);
            }
        }
    }


    public class DB
    {
        public DB()
        {
            
        }

        public void checkBD(string path, string dbName)
        {
            string file = path + dbName;
            if (!File.Exists(file))
            {
                createBD(path, dbName);
            }
            else
            {
                makeBackup(path, dbName);
                checkDBFields(path, dbName, "account", "sort", "INTEGER", "10");
            }

        }

        public void makeBackup(string path, string dbName)
        {
            File.Copy(path+dbName, path + "backup_"+dbName, true);
        }
        public void checkDBFields(string path, string dbName, string tableName, string fieldName, string fieldType, string defaultValue)
        {
            System.Data.SQLite.SQLiteConnection connection = new SQLiteConnection(string.Format("Data Source={0};", Constants.DB_PATH + Constants.DB_NAME));
            connection.Open();
            SQLiteCommand accountListCommand = new SQLiteCommand("SELECT * FROM '"+ tableName + "' LIMIT 1; ", connection);
            SQLiteDataReader reader = accountListCommand.ExecuteReader();
            foreach (DbDataRecord record in reader)
            {
                bool hasField = false;
                for (int i=0; i< record.FieldCount; i++)
                {                  
                    if(record.GetName(i) == fieldName)
                    {
                        hasField = true;
                        break;
                    }
                }
                //если не нашли поля в таблице -создаем его БД
                if (!hasField)
                {
                    SQLiteCommand command = new SQLiteCommand("ALTER TABLE '" + tableName + "' ADD COLUMN " + fieldName + " " + fieldType + " Default " + defaultValue + "; ", connection);
                    command.ExecuteNonQuery();
                }
            }
            connection.Close();
        }
        public void createBD(string path, string dbName)
        {
            if (!Directory.Exists(path))
                Directory.CreateDirectory(path);
             SQLiteConnection.CreateFile(path+dbName);

            if(File.Exists(path+dbName))
             {
                SQLiteConnection connection =
                new SQLiteConnection(string.Format("Data Source={0};", path + dbName));
                    SQLiteCommand command =
                        new SQLiteCommand("CREATE TABLE account (id INTEGER PRIMARY KEY, title VARCHAR, url VARCHAR, login VARCHAR, password VARCHAR, sort INTEGER, comment TEXT);", connection);
                    connection.Open();
                    command.ExecuteNonQuery();
                    connection.Close();
            }
        }


    }

    public class Account
    {
        public Account(int id, string title, string url, string login, string password, int sort, string comment)
        {
            this.id = id;
            this.title = title;
            this.url = url;
            this.login = login;
            this.password = password;
            this.sort = sort;
            this.comment = comment;
        }
        public int id { get; set; }
        public string title { get; set; }
        public string url { get; set; }
        public string login { get; set; }
        public string password { get; set; }
        public int sort { get; set; }
        public string comment { get; set; }
    }

   
}
