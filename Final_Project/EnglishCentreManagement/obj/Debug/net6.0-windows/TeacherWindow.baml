   M S B A M L   `   `   `  ����R  NEnglishCentreManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:EnglishCentreManagementEnglishCentreManagement  5   	   g8clr-namespace:EnglishCentreManagement.UserControlProject*EnglishCentreManagement.UserControlProject  5   	   g8clr-namespace:EnglishCentreManagement.UserControlProject*EnglishCentreManagement.UserControlProject  5
   	   m;clr-namespace:EnglishCentreManagement.ViewModel.UserControl-EnglishCentreManagement.ViewModel.UserControl  5   	   +    %EnglishCentreManagement.TeacherWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:EnglishCentreManagement     5   	   Guc8clr-namespace:EnglishCentreManagement.UserControlProject     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	   Jusercontrol8clr-namespace:EnglishCentreManagement.UserControlProject  5
   	   VviewmodelUserControl;clr-namespace:EnglishCentreManagement.ViewModel.UserControl  5   	   -   5        $��teacherWindow��5   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignFont#���  5   	    � Title$ Manager��5   	   $	��700��6   $
��1300��6&    � WindowStartupLocation$ CenterScreen=�5   	    � WindowStyle$
 None=�5   	   
������  � AllowsTransparency$
 True��5   	    � 	Resources 5       �� DataTypeA   ;EnglishCentreManagement.ViewModel.UserControl.HomeViewModel7   1EnglishCentreManagement.UserControlProject.HomeUCS   MEnglishCentreManagement.ViewModel.UserControl.ManageTeacherClassRoomViewModelI   CEnglishCentreManagement.UserControlProject.ManageTeacherClassRoomUCM   GEnglishCentreManagement.ViewModel.UserControl.CalendarTeachingViewModelC   =EnglishCentreManagement.UserControlProject.CalendarTeachingUCF   @EnglishCentreManagement.ViewModel.UserControl.UserInforViewModelB	   <EnglishCentreManagement.UserControlProject.UserInformationUC��%,  (��       5      *, +)(�� 2     5      *, +)(�� d     5"      *, +)(�� �     5&      *, +)�� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5       �� 5"   
   "  6   .R�5#        5$      �� 5&   
   "  6   .R�5'      	  5(      5)      .��5+      ��  �� CornerRadius$ 10��6   $��1q�5,      ��54   
   �� 55      	 �� 
StartPoint$		 0,0&�6"   
 �� EndPoint$	
 1,1&�63   .��56      �  � Color$ #4a26ab��6    � Offset$ 0Q�6/   6<   57      ._�5:   
   �  � ColumnDefinitions 5<      �� 5>      $	��250 �6#   �� 5@      $��* �6#   .+�5D      �  � RowDefinitions 5E      �� 5F      $��* �6$   �� 5G      $��50 �6$   .+�5J      �� .+�5M      ��  �� Orientation$ 
Horizontal=�6!   $��35��5N      $��
15 25 0 40q�5O      .+�5P      �� $)��#/ResourceXAML/Image/EnglishLogo.png��6    �� 5R      $��English��6$   
�������$��15(�5T       $��
Montserrat)�5U       $��Medium"�5V       $��Center=�5W       $��10 0 0 0q�5X       5Y      	� 5[        
menuButton#��[ 6"   
 � Tag$ #BADAFF��5\      ��5]      �� *ShowHomeView+.��5_      �� $ 
Horizontal=�6%   .+�5`      '
  !MaterialDesignThemes.Wpf.PackIcon
   
  Kind$
 Home=�66     menuButtonIcon#��[ 6B   �� 5a      $��	Dashboard��6(     menuButtonText#��[ 69   5b      5d      	� 5f      #��[ 6"   $ #BADAFF��5g      ��5h      �� *ShowYourClassView+.��5j      �� $ 
Horizontal=�6%   .+�5k      
  $ ClipboardEditOutline=�66   #��[ 6R   �� 5l      $��
Your class��6(   #��[ 6:   5m      5o      	� 5q      #��[ 6"   $ #FFC4A4��5r      ��5s      �� *ShowYourCalendarView+.��5t      �� $ 
Horizontal=�6%   .+�5u      
  $ Calendar=�66   #��[ 6F   �� 5v      $��Calendar��6(   #��[ 68   5w      5x      	� 5z      #��[ 6"   $ #37ef57��5{      ��5|      �� *ShowUserInforView+.��5~      �� $ 
Horizontal=�6%   .+�5      
  $ AccountBoxOutline=�66   #��[ 6O   �� 5�      $��User information��6(   #��[ 6@   5�      5�      5�      	� 5�      #��[ 6   $ #BADAFF��5�        ControlBarVM � DataContext# [ 5�      $��1��5�      ��5�      �� *CloseWindowCommand+��5�      ��  �� ElementName$ teacherWindow��.��5�      �� $ 
Horizontal=�6!   .+�5�      
  $ LogoutVariant=�62   #��[ 6G   �� 5�      $��Log out��6$   #��[ 63   5�      5�      5�      � 5�      $��1��6    5�      �� 5�      $��25 �6$   �� 5�      $��35 �6$   �� 5�      $��* �6$   .+�5�      �� -   5         ��Name$ pnlControlBar��5�      $��0��5�      $ 
Horizontal=�5�      $��RightToLeft=�5�      
������ $��0 0 5 0q�5�      # [ 5�      .+�5�      �� -   5         ��Name$ btnClose��5�        controlButton#��[ 5�      $ #ffffff��5�      ��5�      �� *CloseWindowCommand+��5�      �� $ teacherWindow��.��5�      
  $ Power=�62     controlButtonIcon#��[ 6?   5�      �� 5�      -   5        $ btnShowInformation��5�      #��[ 5�      $ #ffffff��5�      .��5�      
  $ AccountCircleOutline=�62   #��[ 6N   5�      �� 5�      -   5        $ btnShowNotify��5�      #��[ 5�      $ #ffffff��5�      .��5�      
  $ BellOutline=�62   #��[ 6E   5�      5�      � 5�      $��1��6    5�      �� 5�      �� 5�      .+�5�      �� $��0��6!   $ 
Horizontal=�5�   !   $��Center=�5�   !   .+�5�      
  $��20��5�   2   $��20��5�   2   
�������$��	35 0 10 0q�5�   2    5�   2   �� *Icon+5�   2   �� 5�      
�������$��16(�5�   $   $��
Montserrat)�5�   $   $��Medium"�5�   $   $��Center=�5�   $   ��5�   $   �� *	Caption+5�   $   5�      �� 5�      $��1��6!   $ 
Horizontal=�5�   !   $��RightToLeft=�5�   !   $��Center=�5�   !   $��0 0 10 0q�5�   !   .+�5�      ��   
iconButton#��[ 6!   $ #BADAFF��5�   !   .��5�      
  $ Check=�66    	 iconButtonIcon#��[	 6C   5�      �� 5�      
�������$��
Montserrat)�5�   $   $��12(�5�   $   $��Center=�5�   $   ��5�   $   �� *CrtTeacher.NamePerson+5�   $   A� 5�      $��35��6"   $��35��6.   ���#b59cf7$��2��5�   "   $��	10 0 10 0q�5�   "   ��5�      �� 5�   "    �� ImageSource$- '/ResourceXAML/Image/purplebackgroun.png��6-   5�      5      5     �� 5     $ 10��6   $��2��5     $��20q�5     ��5     �� 5	     $		 0,0&�6.   $	
 1,1&�6?   .��5
     � $ Transparent��6+   $ 0Q�6?   6L   5     ._�5     �� ��6%   �� *CurrentChildView+5     5     5     5     5     