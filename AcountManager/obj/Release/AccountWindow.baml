   M S B A M L   `   `   `  ���� I  EAccountManager, Version=1.0.0.6, Culture=neutral, PublicKeyToken=null/clr-namespace:AccountManagerAccountManager  "    AccountManager.AccountWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     .localclr-namespace:AccountManager     -   $��
AccountWnd��  � Title$  Аккаунт��$	��380��$	��400�� � 
ResizeMode$ NoResize=� � SizeToContent$ Height=�.��� .+��� -   $��accountForm��$	��Top=�.+��� -    ��Name$ id��$
��Left=� �� TextWrapping$
 Wrap=�$	��280��$y�Hidden=�����  �� Path$ id��  � Orientation$ 
Horizontal=�$��0 0 0 10q�.+��� -    ��Name$ 
labelTitle��$��Название:��$
��Left=�$	��Top=�$��90���� -   $ title��$
��Left=�$
 Wrap=�$	��280������ $ title�� $ 
Horizontal=�$��0 0 0 10q�.+��� -   $ labelUrl��$��URL/Адрес:��$
��Left=�$	��Top=�$��90���� -   $	 url��$
��Left=�$
 Wrap=�$	��280������ $	 url�� $ 
Horizontal=�$��0 0 0 10q�.+��� -   $ 
labelLogin��$��Логин:��$
��Left=�$	��Top=�$��90���� -	   $ login��$
��Left=�$
 Wrap=�$	��280������ $ login�� $ 
Horizontal=�$��0 0 0 10q�.+��� -
   $ labelPassword��$��Пароль:��$
��Left=�$	��Top=�$��90���� -   $ password��$
��Left=�$
 Wrap=�$	��280������ $ password�� $ 
Horizontal=�$��0 0 0 10q�.+��� -   $ 	labelSort��$��Сортировка:��$
��Left=�$	��Top=�$��90���� -   $
 sort��$
��Left=�$
 Wrap=�$	��280������ $
 sort�� $ 
Horizontal=�$��0 0 0 10q�.+��� -   $ labelComment��$��Комментарий:��$
��Left=�$	��Top=�$��90���� -   $ comment��$
��Left=�$
 Wrap=�$	��280�� �� AcceptsReturn . $	��100������ $ comment�� $ 
Horizontal=�$��0 0 0 10q�$��Center=�.+��� -   $��Сохранить��$	��200��