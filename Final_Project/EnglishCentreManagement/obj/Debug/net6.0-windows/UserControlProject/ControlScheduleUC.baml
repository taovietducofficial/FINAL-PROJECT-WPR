   M S B A M L   `   `   `  ����R  NEnglishCentreManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullg8clr-namespace:EnglishCentreManagement.UserControlProject*EnglishCentreManagement.UserControlProject  5      g8clr-namespace:EnglishCentreManagement.UserControlProject*EnglishCentreManagement.UserControlProject  5
      B    <EnglishCentreManagement.UserControlProject.ControlScheduleUC   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dlocal8clr-namespace:EnglishCentreManagement.UserControlProject  5      Z VFontAwesome.WPF, Version=4.7.0.37774, Culture=neutral, PublicKeyToken=0758b07a11a4f466-fa$http://schemas.fontawesome.io/icons/  5      Jusercontrol8clr-namespace:EnglishCentreManagement.UserControlProject  5
      .��5      �   � RowDefinitions  5   
   �� 5      $��80 �6   �� 5      $��* �6   .+�5   
   �� $��1��6    �� CornerRadius$ 20��6   ���#81d4fa���#696969$��5q�5   '   $��	0 0 2.5 0q�6;   ._�5      &   System.Windows.Controls.DataGrid  -   5          Name$ dtgSchedule��5      $��10q�6,      DataGridStyle1#���   68     DataGridCellStyle1   	CellStyle# �  5        DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  5        DataGridRowStyle1   RowStyle# �  5      ���#fff8e1$
��Bold"�5      ��5      �� *	Schedules+ �� UpdateSourceTrigger$ PropertyChanged=�   Columns 5      4  .System.Windows.Controls.DataGridTemplateColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Shift��6-   	   
IsReadOnly$
	 True��6<   
   Width5  /System.Windows.Controls.DataGridLengthConverter$

 auto 6N      CellTemplate 5      �� 5      .R�5    "   ��  �� Orientation$ Vertical=�6-   .+�5!   &   �� $��40��6-   $��40��68   $ 50��6D   $��0 0 10 0q�6V   ���#ff5252._�5"   *   �� $��Center=�6O   $��Center=�6j   
�������$��0 0 0 1q�6�     txtInforMain#��[ 6�   $��SemiBold"�6�   ��64   �� *	ShiftCode+6�   5#   '   �� 5%   &   $��11(�60   #��[ 6>   $��Center=�6�   
���   ���6d   �� *TxtDetailTimeStart+6�   �� 5'   &   $��11(�60   #��[ 6>   $��Center=�6�   
���   ���6d   �� *TxtDetailTimeEnd+6�   5(   #   5)      5+        5-      $ Monday��6-   $
	 True��6=      CanUserResize$ False��6O   $
 * 6e    5.      �� 5/      .R�50   "   �� $ Vertical=�6-   .+�51   &   �� 
���  ��$��15(�6A   $��SemiBold"�6O   ��6e   �� *IdClassMonday+�� 53   &   
����  �$��12(�6B   ��6P   �� *NameTeacherMonday+�� 55   &   
���   �$��12(�6C   ��6Q   �� *RoomNumMonday+56   #   57      59        5;      $ Tuesday��6-   $
	 True��6>   $ False��6P   $
 * 6f    5<      �� 5=      .R�5>   "   �� $ Vertical=�6-   .+�5?   &   �� 
���  ��$��SemiBold"�6A   $��15(�6X   ��6f   �� *IdClassTuesday+�� 5A   &   
����  �$��12(�6B   ��6P   �� *NameTeacherTuesday+�� 5C   &   
���   �$��12(�6C   ��6Q   �� *RoomNumTuesday+5D   #   5E      5G        5I      $ 	Wednesday��6-   $
	 True��6@   $ False��6R   $
 * 6h    5J      �� 5K      .R�5L   "   �� $ Vertical=�6-   .+�5M   &   �� 
���  ��$��SemiBold"�6A   $��15(�6X   ��6f   �� *IdClassWednesday+�� 5O   &   
����  �$��12(�6B   ��6P   �� *NameTeacherWednesday+�� 5Q   &   
���   �$��12(�6C   ��6Q   �� *RoomNumWednesday+5R   #   5S      5U        5W      $ Thursday��6-   $
	 True��6?   $ False��6Q   $
 * 6g    5X      �� 5Y      .R�5Z   "   �� $ Vertical=�6-   .+�5[   &   �� 
���  ��$��SemiBold"�6A   $��15(�6X   ��6f   �� *IdClassThursday+�� 5]   &   
����  �$��12(�6B   ��6P   �� *NameTeacherThursday+�� 5_   &   
���   �$��12(�6C   ��6Q   �� *RoomNumThursday+5`   #   5a      5c        5e      $ Friday��6-   $
	 True��6=   $ False��6O   $
 * 6e    5f      �� 5g      .R�5h   "   �� $ Vertical=�6-   .+�5i   &   �� 
���  ��$��SemiBold"�6A   $��15(�6X   ��6f   �� *IdClassFriday+�� 5k   &   
����  �$��12(�6B   ��6P   �� *NameTeacherFriday+�� 5m   &   
���   �$��12(�6C   ��6Q   �� *RoomNumFriday+5n   #   5o      5q        5s      $ Saturday��6-   $
	 True��6?   $ False��6Q   $
 * 6g    5t      �� 5u      .R�5v   "   �� $ Vertical=�6-   .+�5w   &   �� 
���  ��$��SemiBold"�6A   $��15(�6X   ��6f   �� *IdClassSaturday+�� 5y   &   
����  �$��12(�6B   ��6P   �� *NameTeacherSaturday+�� 5{   &   
���   �$��12(�6C   ��6Q   �� *RoomNumSaturday+5|   #   5}      5        5�      $ Sunday��6-   $
	 True��6=   $ False��6O   $
 * 6e    5�      �� 5�      .R�5�   "   �� $ Vertical=�6-   .+�5�   &   �� 
���  ��$��SemiBold"�6A   $��15(�6X   ��6f   �� *IdClassSunday+�� 5�   &   
����  �$��12(�6B   ��6P   �� *NameTeacherSunday+�� 5�   &   
���   �$��12(�6C   ��6Q   �� *RoomNumSunday+5�   #   5�      5�      5�      5�      �� 5�   
   $��0��6   ���#81d4fa���#696969$��	2.5 0 0 0q�6I   $ 20��6\   $��5q�6n   ._�5�      �� $ 
Horizontal=�6   .+�5�      ]� $��Center=�6   $��Center=�67    � ForceCursor$
 True��6T   .+�5�      �� $��60��6   $��60��6(   $��	10 0 10 0q�64   ���#9056c2$	 100��6\   $	��Top=�6o   $��Center=�6�   ._�5�      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ BellBadgeOutline=�62   ���#ffff00$��Center=�6_   $��Center=�6|   $��40��6�   $��40��6�   5�      5�      �� 5�      $ 20��6   
���   �$��2q�6?   $��2q�5�      $
��auto��6$   ._�5�      �� $ 
Horizontal=�6!   $��
5 10 10 5 q�6:   .+�5�      ]� $	��Top=�6$   $
��Left=�6<   .+�5�      �� $��40��6%   $��40��60    �� Padding$ 3q�6<   
�������$	 100��5�   %   $	��Top=�68   $��Center=�6M   ._�5�   "     $ AccountStudent=�6:   $��Center=�6P   $��Center=�5�   :   $��30��6U   $��30��6`   5�      5�      �� 5�      #��[ 6A   $��Center=�5�   $   $��	5 0 0  0 q�6?   $��12(�5�   $   $��SemiBold"�62   ��5�   $   �� *TxtInforStu+5�   2   5�      5�      �� 5�      $ 20��6   
���   �$��2q�5�      $��2q�6-   $
��auto��68   ._�5�      �� $ 
Horizontal=�6!   .+�5�      �� $ 
Horizontal=�6%   .+�5�      6   0EnglishCentreManagement.UserControlProject.TagUC  $
��auto��60   
 � Tag$ BullseyeArrow��6=      Text$ Week:��6Q   $��14(�6^   �� 5�        buttonCorrow#��[ 6%   $��12 0 5 0q�6o   ��6K   �� *DownWeekCommand+.��5�   "   "  FontAwesome.WPF.ImageAwesome     Icon$ 	AngleLeft=�62     angleCorrow#��[ 6C   5�      �� 5�      $ Vertical=�6)   $��	10 0 0 10q�6@   .+�5�   "   �� $ 
Horizontal=�6-   $��	 0 10 0 5q�6F   .+�5�   &     $ CalendarStart=�6>   $��Center=�6S   �� 5�   &   $��5 0 0 0 q�5�   0   $��Center=�6B   $��SemiBold"�6]   $��12(�5�   0   #��[ 6>   ��5�   0   �� *TimeStudStart+ �� StringFormat$ 
dd-MM-yyyy�� �� Mode$ TwoWay=�5�   >   5�   #   �� 5�   "   $ 
Horizontal=�6-   $�� 0 5 0 5q�6F   .+�5�   &     $ CalendarEnd=�6>   $��Center=�6Q   �� 5�   &   $��5 0 0 0q�6r   $��12(�6�   #��[ 6�   $��SemiBold"�6�   $��Center=�6�   ��60   �� *TimeStudEnd+$ 
dd-MM-yyyy��$ TwoWay=�6�   5�   #   5�      �� 5�      #��[ 6%   $��12 0 5 0q�6K   ��6]   �� *UpWeekCommand+.��5�   "     $ 
AngleRight=�62   #��[ 6D   5�      5�      5�      5�      �� 5�      $ 20��6   
���   �$��2q�6?   $��2q�6S   $
��auto��6^   ._�5�      �� $ 
Horizontal=�6!   $��	10 0 10 0q�6:   .+�5�        $ MinusCircle��6,   ���#c82d33$ Absent��6S   $��14(�6a   �� 5�      #��[ 6$   $��12(�6J   $��Center=�6s   $��	10 0 0 0 q�6�   ��6X   �� *	TxtAbsent+6�   5�      5�      5�      5�      5�      5�      