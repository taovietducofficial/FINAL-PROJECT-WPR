   M S B A M L   `   `   `  ����R  NEnglishCentreManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullg8clr-namespace:EnglishCentreManagement.UserControlProject*EnglishCentreManagement.UserControlProject  5      g8clr-namespace:EnglishCentreManagement.UserControlProject*EnglishCentreManagement.UserControlProject  5      <    6EnglishCentreManagement.UserControlProject.YourClassUC   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jlocal8clr-namespace:EnglishCentreManagement.UserControlProject     5      Guc8clr-namespace:EnglishCentreManagement.UserControlProject     5      _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	      Z VFontAwesome.WPF, Version=4.7.0.37774, Culture=neutral, PublicKeyToken=0758b07a11a4f466-fa$http://schemas.fontawesome.io/icons/  5
      -   5        $��	yourClass��5      .��5      �   � RowDefinitions  5   
   �� 5      $	��120 �6   �� 5      $	��434 �6   .+�5   
   � $��0��6   .+�5      �  � ColumnDefinitions 5      �� 5      $
��0.3* �6'   �� 5      $
��1.3* �6'   �� 5      $��1* �6'   .+�5      �� ���#ffd500 �� Padding$ 10q�6.    �� CornerRadius$ 10��6;   $��0��6M   $��0 0 1 0q�6]   ._�5      ��  �� Orientation$ Vertical=�6!   .+�5      ]� .+�5      �� $��60��6%   $��60��60   $ 3q�6<   
�������$	 100��6[   $	��Top=�6n   $��Center=�6�   ._�5    "   A� ��5!   &   �� 5"   *    �� ImageSource$� �E:/1THUMUCDAIHOC/HOC KY IV/Windows programing/Final_Project_Group5/Final_Project_Group5/EnglishCentreManagement/ResourceXAML/Image/graduating-student.png��65   5$   #   5%      5&      �� 5'      $��Let's get you say up ��6$    �� TextAlignment$ Center=�5(      $
��Bold"�5)      $��9(�5*      ���#3636365+      5,      5-      �� 5/      $��1��6   
�������$ 10��6<   $ 5q�6N   $��0 0 1 0q�6Z   ._�50      �� $ Vertical=�6!   .+�52      � $��2q�6    53      �� 54   "   $	��115 �63   �� 55   "   $��* �63   .+�57      6   0EnglishCentreManagement.UserControlProject.TagUC  $��0��6'   
 � Tag$ CastEducation��67      Text$ Course:��6K   $	��100��6Z   $��20(�6f   $��Center=�6t   �� 58      $��1��6)   $ 
Horizontal=�69   .+�5:   "   �� -   5        	 ��Name$	 cbCourseInputLev��5:   +   )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Input Level��5;   !   .  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton$
 True��5<   !    "  MaterialDesignOutlinedComboBox#��[  5=   !   $	��140��5>   !   $��0 0 10 0q�6.   5?   #   �� 5B   "   -   5        $	 cbCourseName��5B   +   $
 Choose Reliable Course��5C   !   $
 True��5D   !   #��[  5E   !   $	��220��5F   !    �� SelectedItem 5G   &   �� 5H   *    �� Mode$ TwoWay=�62    �� Path$ SelectedCourse�6@    �� UpdateSourceTrigger$ PropertyChanged=�6W   5I   +   5K   #   5L      5M      � 5O      $��2q�6    5P      �� 5Q   "   $	��115 �63   �� 5R   "   $��* �63   .+�5T        $��0��6'   $ HumanMaleBoard��67   $ Teacher:��6L   $��20(�5U   #   $��Bottom=�61   $
��Left=�6L   $	��115��6g   �� 5V      $��1��6)   $ 
Horizontal=�69   .+�5W   "   �� -   5         ��Name$ TeacherName��5W   6   $	��200��6*   $
  Reliable Teacher��5X   &    % !MaterialDesignFloatingHintTextBox#��[ 5Y   &   ��5Z   &   �� *	Teacher+)  #MaterialDesignThemes.Wpf.DialogHost  5[   "   $��10 0 0 0q�6<      DialogContent 5\   &   �� 5]   *   $ Vertical=�65   .+�5^   .   ��    CloseDialogCommand#��Z 65     MaterialDesignFlatButton#���  6w   $��4q�6�   ��6�   0  *MaterialDesignThemes.Wpf.PackIconExtension  *ArrowRightCircleOutline+5_   /   � 5`   .   .+�5a   2   �� -   5         ��Name$ 
lstTeacher��5a   ;   ��5b   6   �� 5c   :   .R�5d   >      6G   �� 6[   5e   ;   5g   3   5h   /   5i   +   .��5l   &   �� -   5         ��Name$ 
OpenDialog��5l   -   $��0��5m   1   $��5q�5n   1   $��Right=�5o   1   $��Bottom=�5p   1      OpenDialogCommand#��Z 5q   1    3 /MaterialDesignFloatingActionMiniSecondaryButton#��[ 5s   1   ��5r   1        Kind$
 Plus=�   Size 225s   1   5t   #   5u      5v      5x      5y      �� 5{      $��2��6   
�������$ 10��6<   $ 5q�6N   $��1 0 0 0q�6Z   ._�5|      �� $ Vertical=�6!   .+�5~      � $��2q�6    5      �� 5�   "   $	��160 �63   �� 5�   "   $	��233 �63   .+�5�        $��0��6'   $ ProjectorScreenOutline��67   $ Studying meet��6T   $��Center=�6i   $��15(�5�   #   �� 5�      -   5        $	 cbMeet��5�   '   $��1��67   $
 Choose Reliable Meets��5�   !   $
 True��5�   !   #��[  5�   !   $	��210��5�   !   $
��Left=�6-   5�      5�      � 5�      $��2q�6    5�      �� 5�   "   $	��160 �63   �� 5�   "   $��* �63   .+�5�        $��0��6'   $ WrenchClock��67   $ Studying shift��6I   $��15(�5�   #   $
��Left=�61   $��Center=�6L   $��3��6g   �� 5�      -   5        $	 cbShift��5�   '   $��2��68   $
 Choose Reliable Shift��5�   !   $
 True��5�   !   #��[  5�   !   $	��210��5�   !   $
��Left=�6-    5�   "   �� 5�   &   $ TwoWay=�6.   $ SelectedCourse�6<   $ PropertyChanged=�6S   5�   '   5�      5�      5�      5�      5�      5�      �� 5�   
   $��1��6   $��2,2,2,2q�6   $ 10��6/   
�������$��2��6X   ._�5�      � .+�5�      �� -	   5        $��listView��5�      ���#77ceff��5�      �� *ListRegisteredClassroom+$ TwoWay=�$ PropertyChanged=�.  (System.Windows.Interactivity.Interaction   Triggers 5�      /  )System.Windows.Interactivity.EventTrigger  5�         	EventName$ MouseUp��6)   .  (System.Windows.Interactivity.TriggerBase   Actions. 5�      6	  0System.Windows.Interactivity.InvokeCommandAction	   	  Command 5�   !   �� * ShowYourTestInClassroomCommand+ 	  CommandParameter 5�   !   ��  �� ElementName$ listView��5�      ��5�      �� 5�      .R�5�      �� $ 3��6%   $��3q�5�   %   $	��990��5�   %   ���#4569eb._�5�   "   �� $ 
Horizontal=�6-   .+�5�   &   �� $ 5��6-   $��2q�6>   
��� � �._�5�   *   �� $ Vertical=�65   .+�5�   .   '
  !MaterialDesignThemes.Wpf.PackIcon
   
  Kind$ GoogleClassroom=�6F   $��40��6]   $��40��6h   $��5q�6t   $��Center=�5�   "   $��Center=�6?   �� 5�   .   $ 	btnDetail��65   $��20��5�   9   $��20��6D   3  -MaterialDesignThemes.Wpf.ButtonProgressAssist   Value$ 50Q�5�   9   $
{�True��5�   9    . *MaterialDesignFloatingActionMiniDarkButton#��[ 5�   9   ���#007ac1$��3q�5�   9   ��5�   9     *
EyeOutline+5�   9   �� 5�   .   $��20��5�   9   $��20��6D   $��3q�5�   9   $ 50Q�5�   9   $
{�True��5�   9   #��[ 5�   9   ��5�   5   �� *.,DataContext.DeleteRegisteredClassroomCommand+$ 	yourClass����5�   9   �� *IDClassroom+��5�   9     *DeleteForever+5�   9   5�   +   5�   '   �� 5�   &   $ Vertical=�61   .+�5�   *   �� 
�������$��2q�5�      ���#c53414$	��550��5�      $ 5��5�      $
��Left=�5�      $��Center=�5�      ._�5�   .     $ Class��67    6C   �� *IDClassroom+5�   +   �� 5�   *   $ 5��61   $��2q�5�      ���#ffff00$	��490��5�      ._�5�   .   �� $ 
Horizontal=�69   .+�5�   2   �� .+�5�   6     $ 
GolfCourse��6?   $��5q�6w   
���   �$��2q�6�    6P   �� *CourseIns.NameCourse+6�     5�   6   $ HumanMaleBoard��6?   $��5q�6{   
���   �$��2q�6�    6T   �� *TeacherIns.NamePerson+6�   5�   3   �� 5�   2   .+�5�   6     $ Number0BoxMultipleOutline��6?   $��5q�6~   
���   �$��2q�6�    6_   �� *MaxNumStudent+6�     5�   6   $
 Room��6?   $��5q�6c   
���   �$��2q�6�    6J   �� *	RoomNum+6�   5�   3   �� 5�   2   .+�5�   6     $ SunClockOutline��6?   $��5q�6x   
���   �$��2q�6�    6U   �� *ShiftIns.StartEnd+6�     5�   6   $ SunClockOutline��6?   $��5q�6p   
���   �$��2q�6�    6U   �� *	StudyDate+6�   5�   3   5�   /   5�   +   5�   '   5�   #   5�      5�      5     5     5     5     5     