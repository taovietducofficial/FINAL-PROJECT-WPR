   M S B A M L   `   `   `  ����R  NEnglishCentreManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullg8clr-namespace:EnglishCentreManagement.UserControlProject*EnglishCentreManagement.UserControlProject  5      C    =EnglishCentreManagement.UserControlProject.CalendarTeachingUC   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Z VFontAwesome.WPF, Version=4.7.0.37774, Culture=neutral, PublicKeyToken=0758b07a11a4f466-fa$http://schemas.fontawesome.io/icons/  5      Dlocal8clr-namespace:EnglishCentreManagement.UserControlProject  5      .��5      �   � RowDefinitions  5   
   �� 5      $��65 �6   �� 5      $��* �6   .+�5   
   �� $��1��6    �� CornerRadius$ 20��6   ���#6ff9ff���#696969$��5q�6[   $��	0 0 2.5 0q�6o   ._�5      &   System.Windows.Controls.DataGrid  -   5          Name$ dtgCalendar��5      $��10q�6,      DataGridStyle1#���   68     DataGridCellStyle1   	CellStyle# �  6a     DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  6�     DataGridRowStyle1   RowStyle# �  6�   ���#fff8e1$��12(�6H  $��SemiBold"�6V  ��5      �� *	Calendars+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ #��6)      
IsReadOnly$
 True��64   	   CanUserResize$	 False��6F   
   Width5  /System.Windows.Controls.DataGridLengthConverter$

 auto 6\   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6i   �� *Number+4  .System.Windows.Controls.DataGridTemplateColumn  5      $ Course��6-   $
 True��6=   $

 auto 6O      CellTemplate 5      �� 5      .R�5   "   �� $��11(�6,     txtInforMain#��[ 6:   $��Center=�6z   $��Center=�6�   
���   ���6`   �� *
CourseID+6�   5      5        5       $ Class��6-   $
 True��6<   $	
 100 6N    5!      �� 5"      .R�5#   "   ��  �� Orientation$ Vertical=�6-   .+�5$   &   �� $��15(�60   #��[ 6>   $��Center=�6~   
���   ���6d   �� *	IdClass+6�   �� 5%   &   $��11(�60   #��[ 6>   $��Center=�6~   
���  ����6d   �� *
TxtStart+6�   �� 5&   &   $��11(�60   #��[ 6>   $��Center=�6|   
����  ���6d   �� *TxtEnd+6�   5'   #   5)      5+        5-      $
 Time��6-   $
 True��6;   $	
 100 6M    5.      �� 5/      .R�50   "   �� $ Vertical=�6-   .+�51   &   �� $��40��6-   $��40��68   $ 50��6D   ���#ff5252._�52   *   �� $��Center=�6O   $��Center=�6j   
�������$��0 0 0 1q�6�   #��[ 6�   ��64   �� *	ShiftCode+6�   53   '   �� 54   &   $��11(�60   #��[ 6>   $��Center=�6�   $��Center=�6�   
���   ���6d   �� *TxtDetailTimeStart+6�   �� 55   &   $��11(�60   #��[ 6>   $��Center=�6�   $��Center=�6�   
���   ���6d   �� *TxtDetailTimeEnd+6�   56   #   57      59        5=      $ Monday��6-   $
 True��6=   $	 False��6O   $
 * 6e    5>      �� 5?      .R�5@   "   �� $ Vertical=�6-   .+�5A   &   �� $��Center=�60   $��Center=�6M   
���   �$��12(�6{   ��6�   �� *RoomNumMonday+5B   #   5C      5E        5F      $ Tuesday��6-   $
 True��6>   $	 False��6P   $
 * 6f    5G      �� 5H      .R�5I   "   �� $ Vertical=�6-   .+�5J   &   �� $��Center=�60   $��Center=�6M   
���   �$��12(�6{   ��6�   �� *RoomNumTuesday+5K   #   5L      5N        5O      $ 	Wednesday��6-   $
 True��6@   $	 False��6R   $
 * 6h    5P      �� 5Q      .R�5R   "   �� $ Vertical=�6-   .+�5S   &   �� $��Center=�60   $��Center=�6M   
���   �$��12(�6{   ��6�   �� *RoomNumWednesday+5T   #   5U      5W        5Y      $ Thursday��6-   $
 True��6?   $	 False��6Q   $
 * 6g    5Z      �� 5[      .R�5\   "   �� $ Vertical=�6-   .+�5]   &   �� $��Center=�60   $��Center=�6M   
���   �$��12(�6{   ��6�   �� *RoomNumThursday+5^   #   5_      5a        5c      $ Friday��6-   $
 True��6=   $	 False��6O   $
 * 6e    5d      �� 5e      .R�5f   "   �� $ Vertical=�6-   .+�5g   &   �� $��Center=�60   $��Center=�6M   
���   �$��12(�6{   ��6�   �� *RoomNumFriday+5h   #   5i      5k        5m      $ Saturday��6-   $
 True��6?   $	 False��6Q   $
 * 6g    5n      �� 5o      .R�5p   "   �� $ Vertical=�6-   .+�5q   &   �� $��Center=�60   $��Center=�6M   
���   �$��12(�6{   ��6�   �� *RoomNumSaturday+5r   #   5s      5u        5v      $ Sunday��6-   $
 True��6=   $	 False��6O   $
 * 6e    5w      �� 5x      .R�5y   "   �� $ Vertical=�6-   .+�5z   &   �� $��Center=�60   $��Center=�6M   
���   �$��12(�6{   ��6�   �� *RoomNumSunday+5{   #   5|      5~      5�      5�      �� 5�   
   $��0��6   ���#6ff9ff���#696969$��	2.5 0 0 0q�6I   $ 20��6\   $��5q�6n   ._�5�      �� $ 
Horizontal=�6   .+�5�      ]� $��Center=�6   $��Center=�67    � ForceCursor$
 True��6T   .+�5�      �� $��50��6   $��50��6(    �� Padding$ 3q�64   ���#ffff00$	 100��6U   $	��Top=�6h   $��Center=�6}   $��2q�6�   
���   �._�5�      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ BookEducationOutline=�62   ���#d63a2c$��Center=�6c   $��Center=�6�   $��30��6�   $��30��6�   5�      5�      �� 5�      $ 20��6   
���   �$��2q�6?   $��2q�6S   $
��auto��6^   ._�5�      �� $ 
Horizontal=�6!   .+�5�      ]� $��Center=�6$   $��Center=�6?   .+�5�      �� $��35��6%   $��35��60   $ 3q�6<   
�������$	 100��6[   $	��Top=�6n   $��Center=�6�   $��5 0 5 0q�6�   ._�5�   "     $ HumanMaleBoardPoll=�6:   $��Center=�6T   $��Center=�6q   $��20��6�   $��20��6�   5�      5�      �� 5�      $��14(�6$   #��[ 6O   $��Center=�6u   ��62   �� *txtInforTea+6u   �� 5�      -   5         ��Name$ btnSee��5�   !   $	��150��61   $��30��6=   +  %MaterialDesignThemes.Wpf.RippleAssist   Feedback �	#DD000000$��5 0 5 0q�5�   Y    " MaterialDesignRaisedDarkButton#��[ 5�       � ToolTip$8 2Resource name: MaterialDesignRaisedSecondaryButton��5�      
�������$��Center=�5�   )   ��5�      0	  *MaterialDesignThemes.Wpf.PackIconExtension	   	  Kind$ FolderSearchOutline=� 	  Size 20{�5�      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window��5�   !   �� *ShowYourScheduleOnWeek+5�      5�      5�      5�      5�      5�      5�      