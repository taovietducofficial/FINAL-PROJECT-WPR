   M S B A M L   `   `   `  ����R  NEnglishCentreManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:EnglishCentreManagementEnglishCentreManagement  5   	   g8clr-namespace:EnglishCentreManagement.UserControlProject*EnglishCentreManagement.UserControlProject  5   	   g8clr-namespace:EnglishCentreManagement.UserControlProject*EnglishCentreManagement.UserControlProject  5
   	   U/clr-namespace:EnglishCentreManagement.ViewModel!EnglishCentreManagement.ViewModel  5   	   m;clr-namespace:EnglishCentreManagement.ViewModel.UserControl-EnglishCentreManagement.ViewModel.UserControl  5   	   +    %EnglishCentreManagement.ManagerWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:EnglishCentreManagement     5   	   Guc8clr-namespace:EnglishCentreManagement.UserControlProject     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	   Jusercontrol8clr-namespace:EnglishCentreManagement.UserControlProject  5
   	   ?	viewmodel/clr-namespace:EnglishCentreManagement.ViewModel  5   	   VviewmodelUsercontrol;clr-namespace:EnglishCentreManagement.ViewModel.UserControl  5   	   -   5        $��managerWindow��5   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignFont#���  5   	    � Title$ Manager��5   	   $	��700��6   $
��1300��6&    � WindowStartupLocation$ CenterScreen=�5   	    � WindowStyle$
 None=�5   	   
������  � AllowsTransparency$
 True��5   	    � 	Resources 5       �� DataTypeA   ;EnglishCentreManagement.ViewModel.UserControl.HomeViewModel7   1EnglishCentreManagement.UserControlProject.HomeUCL   FEnglishCentreManagement.ViewModel.UserControl.ManageClassroomViewModelB   <EnglishCentreManagement.UserControlProject.ManageClassroomUCG   AEnglishCentreManagement.ViewModel.UserControl.AddStudentViewModel=   7EnglishCentreManagement.UserControlProject.AddStudentUCG   AEnglishCentreManagement.ViewModel.UserControl.AddTeacherViewModel=	   7EnglishCentreManagement.UserControlProject.AddTeacherUCF
   @EnglishCentreManagement.ViewModel.UserControl.UserInforViewModelB   <EnglishCentreManagement.UserControlProject.UserInformationUCL   FEnglishCentreManagement.ViewModel.UserControl.CalculateSalaryViewModelB   <EnglishCentreManagement.UserControlProject.CalculateSalaryUC��%�  (��       5      *, +)(�� 2     5      *, +)(�� d     5#      *, +)(�� �     5'      *, +)(�� �     5+      *,
 +)(�� �     5/      *, +)�� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5         5!      �� 5#   
   "  6   .R�5$        5%      �� 5'   
   "  6   .R�5(      	  5)      �� 5+   
   " 
 6   .R�5,        5-      �� 5/   
   "  6   .R�50        51      52      .��54      ��  �� CornerRadius$ 10��6   $��1q�55      ��5=   
   �� 5>      	 �� 
StartPoint$		 0,0&�6"   
 �� EndPoint$	
 1,1&�63   .��5?      �  � Color$ #4a26ab��6    � Offset$ 0Q�6/   6<   5@      ._�5C   
   �  � ColumnDefinitions 5E      �� 5G      $	��250 �6#   �� 5I      $��* �6#   .+�5M      �  � RowDefinitions 5N      �� 5O      $��* �6$   �� 5P      $��50 �6$   .+�5S      �� .+�5V      ��  �� Orientation$ 
Horizontal=�6!   $��35��5W      $��
15 25 0 40q�5X      .+�5Y      �� $)��#/ResourceXAML/Image/EnglishLogo.png��6    �� 5[      $��English��6$   
�������$��15(�5]       $��
Montserrat)�5^       $��Medium"�5_       $��Center=�5`       $��10 0 0 0q�5a       5b      	� 5o        
menuButton#��[ 6"   
 � Tag$ #37ef57��5p      ��5q      �� *ShowUserInforView+.��5s      �� $ 
Horizontal=�6%   .+�5t      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ AccountBoxOutline=�66     menuButtonIcon#��[ 6O   �� 5u      $��User information��6(     menuButtonText#��[ 6@   5v      5x      	� 5z      #��[ 6"   $ #37ef57��5{      ��5|      �� *ShowManageClassroomView+.��5~      �� $ 
Horizontal=�6%   .+�5        $ GoogleClassroom=�66   #��[ 6M   �� 5�      $��Manage classroom��6(   #��[ 6@   5�      5�      	� 5�      #��[ 6"   $ #f5bd13��5�      ��5�      �� *ShowAddStudentView+.��5�      �� $ 
Horizontal=�6%   .+�5�        $ AccountSchoolOutline=�66   #��[ 6R   �� 5�      $��Add student��6(   #��[ 6;   5�      5�      	� 5�      #��[ 6"   $ #FBA2D0��5�      ��5�      �� *ShowAddTeacherView+.��5�      �� $ 
Horizontal=�6%   .+�5�        $ HumanMaleBoard=�66   #��[ 6L   �� 5�      $��Add teacher��6(   #��[ 6;   5�      5�      	� 5�      #��[ 6"   $ #BADAFF��5�      ��5�      �� *ShowCalculateSalaryView+.��5�      �� $ 
Horizontal=�6%   .+�5�        $
 Cash=�66   #��[ 6B   �� 5�      $��Calculate Salary��6(   #��[ 6@   5�      5�      	� 5�      #��[ 6"   $ #FFC4A4��5�      .��5�      �� $ 
Horizontal=�6%   .+�5�        $ GiftOutline=�66   #��[ 6I   �� 5�      $��Set scholarship��6(   #��[ 6?   5�      5�      5�      	� 5�      #��[ 6   $ #BADAFF��5�        ControlBarVM � DataContext# [ 5�      $��1��5�      ��5�      �� *CloseWindowCommand+��5�      ��  �� ElementName$ managerWindow��.��5�      �� $ 
Horizontal=�6!   .+�5�        $ LogoutVariant=�62   #��[ 6G   �� 5�      $��Log out��6$   #��[ 63   5�      5�      5�      � 5�      $��1��6    5�      �� 5�      $��25 �6$   �� 5�      $��35 �6$   �� 5�      $��* �6$   .+�5�      �� -   5         ��Name$ pnlControlBar��5�      $��0��5�      $ 
Horizontal=�5�      $��RightToLeft=�5�      
������ $��0 0 5 0q�5�      # [ 5�      .+�5�      �� -   5         ��Name$ btnClose��5�        controlButton#��[ 5�      $ #ffffff��5�      ��5�      �� *CloseWindowCommand+��5�      �� $ managerWindow��.��5�        $ Power=�62     controlButtonIcon#��[ 6?   5�      �� 5�      -   5        $ btnShowInformation��5�      #��[ 5�      $ #ffffff��5�      .��5�        $ AccountCircleOutline=�62   #��[ 6N   5�      �� 5�      -   5        $ btnShowNotify��5�      #��[ 5�      $ #ffffff��5�      .��5�        $ BellOutline=�62   #��[ 6E   5�      5�      � 5�      $��1��6    5�      �� 5�      �� 5�      .+�5�      �� $��0��6!   $ 
Horizontal=�5�   !   $��Center=�5�   !   .+�5�        $��20��5�   2   $��20��5�   2   
�������$��	35 0 10 0q�5�   2    5�   2   �� *Icon+5�   2   �� 5�      
�������$��16(�5  $   $��
Montserrat)�5  $   $��Medium"�5  $   $��Center=�5  $   ��5�   $   �� *	Caption+5  $   5     �� 5     $��1��6!   $ 
Horizontal=�5	  !   $��RightToLeft=�5
  !   $��Center=�5  !   $��0 0 10 0q�5  !   .+�5     ��   
iconButton#��[ 6!   $ #BADAFF��5  !   .��5       $ Check=�66    	 iconButtonIcon#��[	 6C   5     �� 5     
�������$��
Montserrat)�5  $   $��12(�5  $   $��Center=�5  $   ��5  $   �� *CrtManager.NamePerson+5  $   A� 5     $��35��6"   $��35��6.   ���#b59cf7$��2��5  "   $��	10 0 10 0q�5  "   ��5     �� 5  "    �� ImageSource$- '/ResourceXAML/Image/purplebackgroun.png��6-   5!     �� 5#     #��[ 6!   $ #FFC4A4��5$  !   .��5%       $ EmailOutline=�66   #��[	 6J   5&     �� 5(     #��[ 6!   $ #37ef57��5)  !   .��5*       $ ClockTimeNineOutline=�66   #��[	 6R   5+     5,     5.     �� 51     $ 10��6   $��2��52     $��20q�53     ��54     �� 55     $		 0,0&�6.   $	
 1,1&�6?   .��56     � $ Transparent��6+   $ 0Q�6?   6L   57     ._�5:     �� ��6%   �� *CurrentChildView+5;     5<     5=     5>     5?     