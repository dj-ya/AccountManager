   M S B A M L   `   `   `  ���� I  EAccountManager, Version=1.0.0.6, Culture=neutral, PublicKeyToken=null/clr-namespace:AccountManagerAccountManager      AccountManager.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     .localclr-namespace:AccountManager       � Title$@  :Менеджер управления аккаунтами��$	��350��$	��950�� � Icon$ img/AppLogo.ico��.���� $
��auto=�.���  � RowDefinitions �� $
��auto ��� .+�o� -    o�Name$ mainMenu��$	��Top=�.@�m� -   $��Добавить���� m� -   $��О программе���� m� -   $��
Выход��&   System.Windows.Controls.DataGrid  -     Name$ accountGrid��   AutoGenerateColumns .  $��0,28,0,0q�$��14(�   
IsReadOnly .    Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ ID��	   Width5  /System.Windows.Controls.DataGridLengthConverter$	 30 1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 ��  �� Path$ id�  $ 	Сорт.��$	 50 
 �� $
 sort�  $ Название��$	 * 
 �� $ title�  $	 URL��$	 * 
 �� $	 url�  $ 
Логин��$	 90 
 �� $ login�  $ Пароль��$		 100 
 �� $ password�  $ Комментарий��$	 * 
 �� $ comment�4  .System.Windows.Controls.DataGridTemplateColumn  $ Действия��   CellTemplate �� .R���  �� Orientation$ 
Horizontal=�$��Center=�.+��� -   $��img/browser.png��$
��None=� � ToolTip$( "Открыть в браузере��$��2q��� -   $��img/edit.png��$
��None=�$  Редактировать��$��2q��� -   $��img/delete.png��$
��None=�$ Удалить��$��2q�