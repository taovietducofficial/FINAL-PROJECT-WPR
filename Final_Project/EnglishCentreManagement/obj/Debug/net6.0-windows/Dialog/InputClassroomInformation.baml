   M S B A M L   `   `   `  ����R  NEnglishCentreManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullg8clr-namespace:EnglishCentreManagement.UserControlProject*EnglishCentreManagement.UserControlProject  5   	   g8clr-namespace:EnglishCentreManagement.UserControlProject*EnglishCentreManagement.UserControlProject  5   	   >    8EnglishCentreManagement.Dialog.InputClassroomInformation   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jlocal8clr-namespace:EnglishCentreManagement.UserControlProject     5   	   Guc8clr-namespace:EnglishCentreManagement.UserControlProject     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5
   	   -   5        $��inputClassroom��5   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	   
������  � WindowStartupLocation$ CenterScreen=�5   	    � WindowStyle$
 None=�5   	     MaterialDesignFont#���  5   	   $	��397��5   	   .��5      � .+�5   
   �� $��0��6   $��1q�6!    �� Padding$ 5q�65    �� CornerRadius$ 10��6A   ���#c34934._�5      �  � RowDefinitions 5      �� 5      $	��450 �6$   �� 5      $��* �6$   .+�5      #  MaterialDesignThemes.Wpf.Card  $��0��6&   $��5q�63      UniformCornerRadius$ 5Q�6>   
������.��5       ��  �� Orientation$ Vertical=�6!   $��5q�68   .+�5!      �� ���#f64721$��50��66   $��5q�6B   $ 5��5"   !   ._�5#      �� $ 
Horizontal=�6)   .+�5$   "   '  !MaterialDesignThemes.Wpf.PackIcon  	   Kind$	 	Instagram=�6:   $��Right=�5%   :   $��Center=�5&   :   $��40��5'   :   $��40��5(   :   $��10q�5)   :   �� 5+   "   $��Information of class��6,   $��Center=�5,   ,   $��Center=�5-   ,   $��20(�5.   ,   
�������$��10q�5/   ,   50      51      � 52      $��40��6   
 � ColumnDefinitions
 53      �� 54   "   $	��130 �63   �� 55   "   $��7* �63   �� 56   "   $��* �63   .+�59      �� $ 
Horizontal=�6)   $��0��6B   $��Bottom=�5:   )   .+�5;   "     $	 
GolfCourse=�6:   $��20��6L   $��20��5<   :   $��Center=�5=   :   $
��Left=�5>   :   �� 5@   "   $��
ID Course:��6(   $
��Left=�5A   (   $��Center=�5B   (   $��
Montserrat)�5C   (   $
��Bold"�5D   (   $	��130��6:   $��0��6F   5E      �� 5G      -   5         ��Name$ IDCourse��5G   2   $	��170��6&   $��Center=�5H   &   $��Center=�5I   &   $��1��5J   &   $��2q�5K   &    % !MaterialDesignFloatingHintTextBox#��[ 5L   &    �� 
IsReadOnly$
 True��5N   &   ��5M   &   �� *	TidCourse+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�5N   &   �� 5P   "   $��2��5Q   )    / +MaterialDesignFloatingActionMiniLightButton#��[ 5R   )   ���#c34934
������  � ToolTip$1 +MaterialDesignFloatingActionMiniLightButton��5U   )   $��20��5V   )   $��20��5W   )   {�5P   )   �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window��5X   )   �� *ShowAllCourseDialogCommand+.��5Y   &     $
	 Plus=�6>   5Z   #   5\      � 5^      $��40��6   
 5_      �� 5`   "   $	��130 �63   �� 5a   "   $	��99* �63   .+�5d      �� $ 
Horizontal=�6)   $	��Top=�5e   )   $��0,16,0,0q�6A   .+�5f   "     $	 
GolfCourse=�6:   $��20��6L   $��20��5g   :   $��Center=�5h   :   $
��Left=�5i   :   �� 5k   "   $��ID Classroom:��6(   $
��Left=�5l   (   $��Center=�5m   (   $��
Montserrat)�5n   (   $
��Bold"�5o   (   $	��130��6:   $��0��6F   5p      �� 5r      $	��200��6&   $��Center=�5s   &   $��Center=�5t   &   $��1��5u   &   $��2q�5v   &   #��[ 5w   &   $��2��5x   v   ��6&   �� *TidClassroom+$ TwoWay=�$ PropertyChanged=� 5y   &   �� *CanReadonlId+5{      � 5}      $��40��6   
 5~      �� 5   "   $	��130 �63   �� 5�   "   .+�5�      �� $ 
Horizontal=�6)   $��Bottom=�5�   )   .+�5�   "     $	 AccountStudentOutline=�6:   $��20��5�   :   $��20��6E   $��Center=�5�   :   $
��Left=�5�   :   �� 5�   "   $��Num student:��6(   $
��Left=�5�   (   $��Center=�5�   (   $��
Montserrat)�5�   (   $
��Bold"�5�   (   $	��130��6:   $��0��6F   5�      �� 5�      -   5        $ NumStu��5�   2   $	��200��6&   $��Center=�5�   &   $��Center=�5�   &   $��1��5�   &   $��2q�66   #��[ 5�   &   ��5�   &   �� *TnumbStudent+$ TwoWay=�$ PropertyChanged=�5�      � 5�      $��40��6   
 5�      �� 5�   "   $	��130 �63   �� 5�   "   .+�5�      �� $ 
Horizontal=�6)   $��Bottom=�6B   .+�5�   "     $	 EventWeekBegin=�6:   $��20��6P   $��20��5�   :   $��Center=�5�   :   $
��Left=�5�   :   �� 5�   "   $�� Study date:��6(   $
��Left=�5�   (   $��Center=�5�   (   $��
Montserrat)�5�   (   $
��Bold"�5�   (   $	��130��6:   $��0��6F   5�      �� 5�      -   5         ��Name$
 meet��5�   '   $��1��5�   '   $	��200��5�   '   $��0q�5�   '   ��5�   '   �� *ListStudyDate+ �� SelectedItem 5�   "   �� 5�   &   $ TwoWay=�6.    �� Path$ 
TStudyDate�5�   .   $ PropertyChanged=�5�   .    �� ValidationRules 5�   *   5�   '   5�      5�      � 5�      $��40��6   $��0 5 0 0q�6+   
 5�      �� 5�   "   $	��130 �63   �� 5�   "   .+�5�      �� $ 
Horizontal=�6)   $��Bottom=�5�   )   .+�5�   "     $	 EventWeekBegin=�6:   $��20��5�   :   $��20��6E   $��Center=�5�   :   $
��Left=�5�   :   �� 5�   "   $�� Shift ��6(   $
��Left=�5�   (   $��Center=�5�   (   $��
Montserrat)�5�   (   $
��Bold"�5�   (   $	��130��6:   $��0��6F   5�      �� 5�      -   5        $ shift��5�   D   $	��200��6(   $��1��64   .  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton$
 True��5�   (   ��5�   (   �� *	ListShift+ 5�   "   �� 5�   &   $ TwoWay=�6.   $ TidShift�5�   .   $ PropertyChanged=�5�   .    5�   *   5�   '   5�      5�      � 5�      $��40��6   
 5�      �� 5�   "   $	��130 �63   �� 5�   "   $��* �63   .+�5�      �� $ 
Horizontal=�6)   $	��Top=�5�   )   $��0,16,0,0q�5�   )   .+�5�   "     $	 EventWeekBegin=�6:   $��20��6P   $��20��5�   :   $��Center=�5�   :   $
��Left=�5�   :   �� 5�   "   $��Starting day:��6(   $
��Left=�5�   (   $��Bottom=�5�   (   $��
Montserrat)�5�   (   $
��Bold"�5�   (   $	��130��6:   $��0��6F   5�      (  "System.Windows.Controls.DatePicker  5�        MaterialDesignDatePicker#��[ 6)   $��Center=�5�   )   $��Center=�5�   )   $��1��5�   )   $	��200��5�   )      SelectedDateFormat$ Short=�5�   )      DisplayDateStart 4/5/20235�   )      DisplayDateEnd 4/5/20245�   )   $��2��6C   $��2q�5�   )      SelectedDate 5�   )   �� *TStartingDay+$ TwoWay=�$ PropertyChanged=�5�      � 5     $��40��6   
 5     �� 5  "   $	��130 �63   �� 5  "   .+�5     �� $ 
Horizontal=�6)   $��Bottom=�5  )   .+�5	  "     $	 EventWeekBegin=�6:   $��20��5
  :   $��20��6E   $��Center=�5  :   $
��Left=�5  :   �� 5  "   $��Ending day:��6(   $
��Left=�5  (   $��Bottom=�5  (   $��
Montserrat)�5  (   $
��Bold"�5  (   $	��130��6:   $��0��6F   5       5     -   5          Name$ Start��5  )   #��[ 5  )   $��1��5  )   $��Center=�5  )   $��Center=�5  )   $	��200��5  )   $ Short=�5  )    4/5/20235  )    4/5/20245  )    5  )   �� *
TEndingDay+$ TwoWay=�$ PropertyChanged=�5  )   5     � 5!     $��40��6   
 5"     �� 5#  "   $	��130 �63   �� 5$  "   $��7* �63   �� 5%  "   $��* �63   .+�5(     �� $ 
Horizontal=�6)   $	��Top=�5)  )   $��0,16,0,0q�6A   .+�5*  "     $	 PlayRoom=�6:   $��20��6J   $��20��5+  :   $��Center=�5,  :   $
��Left=�5-  :   �� 5/  "   $��	Room num:��6(   $
��Left=�50  (   $��Center=�51  (   $��
Montserrat)�52  (   $
��Bold"�53  (   $	��130��6:   $��0��6F   54     �� 56     $	��170��6&   $��Center=�57  &   $��Center=�58  &   $��1��59  &   $��2q�5:  &   #��[ 5;  &   ��5<  &   �� *
TroomNum+$ PropertyChanged=�$ TwoWay=��� 5>     $��2��5?  %   #��[ 5@  %   ���#c34934
������ $1 +MaterialDesignFloatingActionMiniLightButton��5C  %   $��20��5D  %   $��20��5E  %   {�5>  %   �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window��5F  %   �� *ShowAvailableRoomCommand+.��5G  "     $
	 Plus=�6:   5H     5I     5J     5K       5M     $��1��6&   $ 5Q�63   ���#720932.��5O     �� $ Vertical=�6!   .+�5P     �� $ 
Horizontal=�6%   $��10q�6>   .+�5Q       $	 PencilPlusOutline=�66   $��20��5R  6   $��20��5S  6   �� 5U     $��Operation Controls��6(   $��2q�6B     text#��[ 5V  (   $��Center=�5W  (   $��Center=�5X  (   ���#ffff725Y  (   5Z     �� 5\     $ 
Horizontal=�6%   .+�5]     %  MaterialDesignThemes.Wpf.Badged     Badge$	 new��64      BadgeColorZoneMode$
 Dark=�5^  4   $��5 5 25 5q�6N   .��5_  "   �� $
��Left=�6)   $��5q�6D   $��40��6O   $��40��5b  )   3  -MaterialDesignThemes.Wpf.ButtonProgressAssist   IsIndeterminate$
 True��5c  )      IsIndicatorVisible$
 True��5d  )       Value$  -1Q�5e  )    & "MaterialDesignFloatingActionButton#��[ 5h  )   ��5`  )   �� *AddOrUpdateClassroomCommand+��5a  )   �� ! �� ElementName$! inputClassroom����5f  )   0  *MaterialDesignThemes.Wpf.PackIconExtension  *PlusCircleOutline+"   Size" 30{�5g  )   �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window5h  )   5i       5k     $
 Exit��65   $ Inverted=�5l  5   $��	25 5 30 5q�6S   .��5m  "   �� $
��Left=�6)   $��5q�6D   $��40��6O   $��40��6[   $
 True��5p  )   $  75Q�5q  )    . *MaterialDesignFloatingActionMiniDarkButton#��[ 5t  )   ���#000051��5n  )   �� *ExitCommand+��5o  )   �� $! inputClassroom����5r  )     *	ExitToApp+" 30{�5s  )   �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window5u  )   5v       5x     $ Update��64   $ Inverted=�6C   $��	20 5 30 5q�5y  4   .��5z  "   �� $
��Left=�6)   $��5q�6D   $��40��6O   $��40��6[   #   IndicatorBackground# �#ffcc80$   IndicatorForeground$ �#e65100$
 True��5  )   $  25Q�5�  )   ���#81d4fa���#81d4fa���	#DD000000#��[ 5�  )   ��5{  )   �� *AddOrUpdateClassroomCommand+��5|  )   �� $! inputClassroom����5�  )     *Update+" 30{�5�  )   �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window5�  )   5�     5�     5�     5�     5�     5�     5�     5�     