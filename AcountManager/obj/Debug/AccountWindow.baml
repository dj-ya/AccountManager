   M S B A M L   `   `   `  ����I  EAccountManager, Version=1.0.0.6, Culture=neutral, PublicKeyToken=null/clr-namespace:AccountManagerAccountManager  5   	   "    AccountManager.AccountWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:AccountManager     5   	   -   5        $��
AccountWnd��5   2     � Title$  Аккаунт��6	   $	��380��6   $	��400��6&    � 
ResizeMode$ NoResize=�6D    � SizeToContent$ Height=�6Z   .��5	      � .+�5
   
   �� -   5        $��accountForm��5
   -   $	��Top=�6   .+�5      �� -   5         ��Name$ id��5      $
��Left=�6"    �� TextWrapping$
 Wrap=�6>   $	��280��6R   $y�Hidden=�6^   ��6r   ��  �� Path$ id�� 5       � Orientation$ 
Horizontal=�6   $��0 0 0 10q�62   .+�5      �� -   5         ��Name$ 
labelTitle��5      $��Название:��6,   $
��Left=�6@   $	��Top=�6[   $��90��6s   �� 5      -   5        $ title��5      $
��Left=�6)   $
 Wrap=�6E   $	��280��6Y   ��6e   �� $ title�5      � 5      $ 
Horizontal=�6   $��0 0 0 10q�62   .+�5      �� -   5        $ labelUrl��5      $��URL/Адрес:��6*   $
��Left=�6?   $	��Top=�6Z   $��90��6r   �� 5      -   5        $	 url��5      $
��Left=�6'   $
 Wrap=�6C   $	��280��6q   ��6W   �� $	 url�6q   5      � 5      $ 
Horizontal=�6   $��0 0 0 10q�62   .+�5      �� -   5        $ 
labelLogin��5      $��Логин:��6,   $
��Left=�6=   $	��Top=�6X   $��90��6p   �� 5      -	   5        $ login��5      $
��Left=�6)   $
 Wrap=�6E   $	��280��6u   ��6Y   �� $ login�6u   5      � 5      $ 
Horizontal=�6   $��0 0 0 10q�62   .+�5      �� -
   5        $ labelPassword��5      $��Пароль:��6/   $
��Left=�6A   $	��Top=�6\   $��90��6t   �� 5      -   5        $ password��5      $
��Left=�6,   $
 Wrap=�6H   $	��280��6{   ��6\   �� $ password�6{   5      � 5      $ 
Horizontal=�6   $��0 0 0 10q�62   .+�5      �� -   5        $ 	labelSort��5      $��Сортировка:��6+   $
��Left=�6A   $	��Top=�6\   $��90��6t   �� 5      -   5        $
 sort��5      $
��Left=�6(   $
 Wrap=�6D   $	��280��6s   ��6X   �� $
 sort�6�   5      � 5       $ 
Horizontal=�6   $��0 0 0 10q�62   .+�5!      �� -   5        $ labelComment��5!      $��Комментарий:��6.   $
��Left=�6E   $	��Top=�6`   $��90��6x   �� 5"      -   5        $ comment��5"      $
��Left=�6+   $
 Wrap=�6G   $	��280��6y    �� AcceptsReturn . $	��100��6�   ��6[   �� $ comment�6�   5#      � 5$      $ 
Horizontal=�6   $��0 0 0 10q�62   $��Center=�6D   .+�5%      �� -   5        $��Сохранить��5%      $	��200��6-   69   5&      5'      5)      5*      