   M S B A M L   `   `   `  ����I  EAccountManager, Version=1.0.0.6, Culture=neutral, PublicKeyToken=null/clr-namespace:AccountManagerAccountManager  5   	       AccountManager.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:AccountManager     5   	     � Title$@  :Менеджер управления аккаунтами��5   	   $	��350��60   $	��950��6=    � Icon$ img/AppLogo.ico��6I   .��5	      �� $
��auto=�6   .��5
      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   o� -   5         o�Name$ mainMenu��5      $	��Top=�6!   .@�5      m� -   5        $��Добавить��5      5      �� 5      6   m� 5      -   5        $��О программе��5      5      �� 5      6   m� 5      -   5        $��
Выход��5      5      5      &   System.Windows.Controls.DataGrid  5      -   5          Name$ accountGrid��5         AutoGenerateColumns .  $��0,28,0,0q�6H   $��14(�6Z      
IsReadOnly .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6)   	   Width5  /System.Windows.Controls.DataGridLengthConverter$	 30 6Q   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 65   ��  �� Path$ id�6Q     5      $ 	Сорт.��6)   $	 50 6V   
 68   �� $
 sort�6V     5      $ Название��6)   $	 * 6Z   
 6;   �� $ title�6Z     5      $	 URL��6)   $	 * 6S   
 66   �� $	 url�6S     5      $ 
Логин��6)   $	 90 6W   
 68   �� $ login�6W     5       $ Пароль��6)   $		 100 6[   
 69   �� $ password�6[     5!      $ Комментарий��6)   $	 * 6_   
 6>   �� $ comment�6_   4  .System.Windows.Controls.DataGridTemplateColumn  5"      $ Действия��6-      CellTemplate 5#      �� 5$      .R�5%   "   ��  �� Orientation$ 
Horizontal=�6-   $��Center=�6F   .+�5&   &   �� -   5        $��img/browser.png��5&   ,   $
��None=�6E    � ToolTip$( "Открыть в браузере��6j   $��2q�6�   6�   �� 5'   &   -   5        $��img/edit.png��5'   ,   $
��None=�6B   $  Редактировать��6g   $��2q�6   6�   �� 5(   &   -   5        $��img/delete.png��5(   ,   $
��None=�6D   $ Удалить��6k   $��2q�6}   6�   5)   #   5*      5,      5.      5/      50      51      