   M S B A M L   `   `   `  ����R  NEnglishCentreManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullg8clr-namespace:EnglishCentreManagement.UserControlProject*EnglishCentreManagement.UserControlProject  5      g8clr-namespace:EnglishCentreManagement.UserControlProject*EnglishCentreManagement.UserControlProject  5      B    <EnglishCentreManagement.UserControlProject.ManageClassroomUC   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jlocal8clr-namespace:EnglishCentreManagement.UserControlProject     5      Guc8clr-namespace:EnglishCentreManagement.UserControlProject     5      _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5
      -   5        $��manageClassroom��5         MaterialDesignBody#���   5      $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5      
������   MaterialDesignFont#���  5      $	��588��5      $	��998��6   .��5      ��  �� CornerRadius$ 10��6   
�������$��1��62   $��5q�5      $��5 0 0 0 q�6%   ._�5   
   �  � RowDefinitions 5      �� 5      $��* �6    �� 5      $��50 �6    �� 5      $��50 �6    �� 5      $��50 �6    .+�5      �� $ 10��6   
������$��0��6?   ���#c34934$��5q�5      $��5 0 0 0 q�6%   ._�5!      �� ��6   �� *ListClassrooms+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� �� SelectedItem 5"      �� *CurrentClassroom+$ TwoWay=�$ PropertyChanged=���5#      �� 5$      .R�5%      �� $ 3��6%   $��3q�5&   !   $	��990��5'   !   ���#4569eb._�5)   "   ��  �� Orientation$ 
Horizontal=�6-   .+�5*   &   �� $ 5��6-   $��2q�6>   
��� � �._�5+   *   �� $ Vertical=�65   .+�5,   .   '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ GoogleClassroom=�6F   $��40��5-   B   $��40��6M   $��5q�6Y   $��Center=�5.   B   $��Center=�6_   �� 50   .   	 ��Name$	 	btnupdate��65   $��20��53   1   $��20��6<   3  -MaterialDesignThemes.Wpf.ButtonProgressAssist
   Value$
 50Q�54   1   $
{�True��56   1    . *MaterialDesignFloatingActionMiniDarkButton#��[ 57   1   ���#007ac1$��3q�59   1   ��51   1   �� *$"DataContext.UpdateClassRoomCommand+ �� ElementName$ manageClassroom����52   1   �� *IDClassroom+��55   1   0  *MaterialDesignThemes.Wpf.PackIconExtension  *
PencilPlus+59   1   �� 5;   .   $	 	btnDelete��65   $��20��5>   1   $��20��6<   $��3q�5?   1   $
 50Q�5@   1   $
{�True��5B   1   #��[ 5C   1   ��5<   1   �� *$"DataContext.DeleteClassRoomCommand+$ manageClassroom����5=   1   �� *IDClassroom+��5A   1     *DeleteForever+5C   1   5D   +   5E   '   �� 5G   &   $ Vertical=�61   .+�5H   *   �� 
�������$��2q�5I   -   ���#c53414$	��550��5J   -   $ 5��5K   -   $
��Left=�5L   -   $��Center=�5M   -   ._�5N   .   6   0EnglishCentreManagement.UserControlProject.TagUC  
 � Tag$ Class��67      Text 6C   �� *IDClassroom+5O   +   �� 5Q   *   $ 5��61   $��2q�5R   -   ���#ffff00$	��490��5T   -   ._�5U   .   �� $ 
Horizontal=�69   .+�5V   2   �� .+�5W   6     $ 
GolfCourse��6?   $��5q�6w   
���   �$��2q�6�    6P   �� *CourseIns.NameCourse+6�     5Y   6   $ HumanMaleBoard��6?   $��5q�6{   
���   �$��2q�6�    6T   �� *TeacherIns.NamePerson+6�   5Z   3   �� 5\   2   .+�5]   6     $ Number0BoxMultipleOutline��6?   $��5q�6~   
���   �$��2q�6�    6_   �� *MaxNumStudent+6�     5_   6   $
 Room��6?   $��5q�6c   
���   �$��2q�6�    6J   �� *	RoomNum+6�   5`   3   �� 5b   2   .+�5c   6     $ SunClockOutline��6?   $��5q�6x   
���   �$��2q�6�    6U   �� *ShiftIns.StartEnd+6�     5e   6   $ SunClockOutline��6?   $��5q�6p   
���   �$��2q�6�    6U   �� *	StudyDate+6�   5f   3   5g   /   5h   +   5i   '   5j   #   5k      5l      5n      5o      �� 5q      $��1��6   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 25��6"   $	��980��5r      $��45��5s       " MaterialDesignRaisedDarkButton#��[ 5u       � ToolTip$7 1MaterialDesignRaisedDarkButton with Round Corners��5v      {�5t      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window��5w      �� *ShowInputClassroomDialog+.��5x      �� $ 
Horizontal=�6   .+�5y        $
 Plus=�6.   �� 5z      $��Add new classroom��6    5{      5|      �� 5~      $��2��6   $ 25��6"   $	��980��5      $��45��5�      
�������
���**��#��[ 5�      $7 1MaterialDesignRaisedDarkButton with Round Corners��5�      {�5�      �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window��5�      �� *ShowValidTeacherDialog+.��5�      �� $ 
Horizontal=�6   .+�5�        $ HumanMaleBoard=�6.   �� 5�      $��Add teacher for a class��6    5�      5�      �� 5�      $��3��6   $ 25��6"   $	��980��5�      $��45��5�      
�������
��� � �#��[ 5�      $7 1MaterialDesignRaisedDarkButton with Round Corners��5�      {�5�      �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window��5�      �� *ShowListStudentCommand+.��5�      �� $ 
Horizontal=�6   .+�5�        $ HumanMaleBoard=�6.   �� 5�      $��ManageClassroom��6    5�      5�      5�      5�      5�      