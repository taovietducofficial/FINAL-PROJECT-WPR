   M S B A M L   `   `   `  ����R  NEnglishCentreManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:EnglishCentreManagementEnglishCentreManagement  5   	   g8clr-namespace:EnglishCentreManagement.UserControlProject*EnglishCentreManagement.UserControlProject  5   	   g8clr-namespace:EnglishCentreManagement.UserControlProject*EnglishCentreManagement.UserControlProject  5
   	   U/clr-namespace:EnglishCentreManagement.ViewModel!EnglishCentreManagement.ViewModel  5   	   m;clr-namespace:EnglishCentreManagement.ViewModel.UserControl-EnglishCentreManagement.ViewModel.UserControl  5   	   +    %EnglishCentreManagement.StudentWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:EnglishCentreManagement     5   	   Guc8clr-namespace:EnglishCentreManagement.UserControlProject     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	   Jusercontrol8clr-namespace:EnglishCentreManagement.UserControlProject  5
   	   ?	viewmodel/clr-namespace:EnglishCentreManagement.ViewModel  5   	   VviewmodelUsercontrol;clr-namespace:EnglishCentreManagement.ViewModel.UserControl  5   	   -   5        $��studentWindow��5   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignFont#���  5   	    � Title$ Manager��5   	   $	��700��6   $
��1300��6&    � WindowStartupLocation$ CenterScreen=�5   	    � WindowStyle$
 None=�5   	   
������  � AllowsTransparency$
 True��5   	    � 	Resources 5       �� DataTypeA   ;EnglishCentreManagement.ViewModel.UserControl.HomeViewModel7   1EnglishCentreManagement.UserControlProject.HomeUCE   ?EnglishCentreManagement.ViewModel.UserControl.RegisterViewModelL   FEnglishCentreManagement.UserControlProject.ControlRegisterForACourseUCF   @EnglishCentreManagement.ViewModel.UserControl.YourClassViewModel<   6EnglishCentreManagement.UserControlProject.YourClassUCL   FEnglishCentreManagement.ViewModel.UserControl.ControlScheduleViewModelB	   <EnglishCentreManagement.UserControlProject.ControlScheduleUCF
   @EnglishCentreManagement.ViewModel.UserControl.UserInforViewModelB   <EnglishCentreManagement.UserControlProject.UserInformationUC��%w  (��       5      *, +)(�� 2     5      *, +)(�� d     5#      *, +)(�� �     5'      *, +)(�� �     5+      *,
 +)�� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5         5!      �� 5#   
   "  6   .R�5$        5%      �� 5'   
   "  6   .R�5(      	  5)      �� 5+   
   " 
 6   .R�5,        5-      5.      .��50      ��  �� CornerRadius$ 10��6   $��1q�51      ��59   
   �� 5:      	 �� 
StartPoint$		 0,0&�6"   
 �� EndPoint$	
 1,1&�63   .��5;      �  � Color$ #4a26ab��6    � Offset$ 0Q�6/   6<   5<      ._�5?   
   �  � ColumnDefinitions 5A      �� 5C      $	��250 �6#   �� 5E      $��* �6#   .+�5I      �  � RowDefinitions 5J      �� 5K      $��* �6$   �� 5L      $��50 �6$   .+�5N      �� .+�5Q      ��  �� Orientation$ 
Horizontal=�6!   $��35��5R      $��
15 25 0 40q�5S      .+�5T      �� $)��#/ResourceXAML/Image/EnglishLogo.png��6    �� 5V      $��English��6$   
�������$��15(�5X       $��
Montserrat)�5Y       $��Medium"�5Z       $��Center=�5[       $��10 0 0 0q�5\       5]      	� 5_        
menuButton#��[ 6"   
 � Tag$ #BADAFF��5`      ��5a      �� *ShowHomeView+.��5c      �� $ 
Horizontal=�6%   .+�5d      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$
 Home=�66     menuButtonIcon#��[ 6B   �� 5e      $��	Dashboard��6(     menuButtonText#��[ 69   5f      5h      	� 5j      #��[ 6"   $ #f5bd13��5k      ��5l      �� *ShowRegisterClassView+.��5n      �� $ 
Horizontal=�6%   .+�5o        $ ClipboardEditOutline=�66   #��[ 6R   �� 5p      $��Register class��6(   #��[ 6>   5q      5s      	� 5u      #��[ 6"   $ #FBA2D0��5v      ��5w      �� *ShowYourClassView+.��5y      �� $ 
Horizontal=�6%   .+�5z        $ HumanMaleBoard=�66   #��[ 6L   �� 5{      $��
Your class��6(   #��[ 6:   5|      5~      	� 5�      #��[ 6"   $ #FFC4A4��5�      ��5�      �� *ShowYourScheduleView+.��5�      �� $ 
Horizontal=�6%   .+�5�        $ GiftOutline=�66   #��[ 6I   �� 5�      $��Schedule��6(   #��[ 68   5�      5�      	� 5�      #��[ 6"   $ #37ef57��5�      ��5�      �� *ShowUserInfoView+.��5�      �� $ 
Horizontal=�6%   .+�5�        $ AccountBoxOutline=�66   #��[ 6O   �� 5�      $��User information��6(   #��[ 6@   5�      5�      5�      	� 5�      #��[ 6   $ #BADAFF��5�        ControlBarVM � DataContext# [ 5�      $��1��5�      ��5�      �� *CloseWindowCommand+��5�      ��  �� ElementName$ studentWindow��.��5�      �� $ 
Horizontal=�6!   .+�5�        $ LogoutVariant=�62   #��[ 6G   �� 5�      $��Log out��6$   #��[ 63   5�      5�      5�      � 5�      $��1��6    5�      �� 5�      $��25 �6$   �� 5�      $��35 �6$   �� 5�      $��* �6$   .+�5�      �� -   5         ��Name$ pnlControlBar��5�      $��0��5�      $ 
Horizontal=�5�      $��RightToLeft=�5�      
������ $��0 0 5 0q�5�      # [ 5�      .+�5�      �� -   5         ��Name$ btnClose��5�        controlButton#��[ 5�      $ #ffffff��5�      ��5�      �� *CloseWindowCommand+��5�      �� $ studentWindow��.��5�        $ Power=�62     controlButtonIcon#��[ 6?   5�      �� 5�      -   5        $ btnShowInformation��5�      #��[ 5�      $ #ffffff��5�      .��5�        $ AccountCircleOutline=�62   #��[ 6N   5�      �� 5�      -   5        $ btnShowNotify��5�      #��[ 5�      $ #ffffff��5�      .��5�        $ BellOutline=�62   #��[ 6E   5�      5�      � 5�      $��1��6    5�      �� 5�      �� 5�      .+�5�      �� $��0��6!   $ 
Horizontal=�5�   !   $��Center=�5�   !   .+�5�        $��20��5�   2   $��20��5�   2   
�������$��	35 0 10 0q�5�   2    5�   2   �� *Icon+5�   2   �� 5�      
�������$��16(�5�   $   $��
Montserrat)�5�   $   $��Medium"�5�   $   $��Center=�5�   $   ��5�   $   �� *	Caption+5�   $   5�      �� 5�      $��1��6!   $ 
Horizontal=�5�   !   $��RightToLeft=�5�   !   $��Center=�5�   !   $��0 0 10 0q�5�   !   .+�5�      ��   
iconButton#��[ 6!   $ #BADAFF��5�   !   .��5�        $ Check=�66    	 iconButtonIcon#��[	 6C   5�      �� 5�      
�������$��
Montserrat)�5�   $   $��12(�5�   $   $��Center=�5�   $   ��5�   $   �� *CrtStudent.NamePerson+5�   $   A� 5�      $��35��6"   $��35��6.   ���#b59cf7$��2��5  "   $��	10 0 10 0q�5  "   ��5     �� 5  "    �� ImageSource$- '/ResourceXAML/Image/purplebackgroun.png��6-   5     �� 5     #��[ 6!   $ #FFC4A4��5	  !   .��5
       $ EmailOutline=�66   #��[	 6J   5     �� 5     #��[ 6!   $ #37ef57��5  !   .��5       $ ClockTimeNineOutline=�66   #��[	 6R   5     5     5     �� 5     $ 10��6   $��2��5     $��20q�5     ��5     �� 5     $		 0,0&�6.   $	
 1,1&�6?   .��5     � $ Transparent��6+   $ 0Q�6?   6L   5     ._�5     �� ��6%   �� *CurrentChildView+5      5!     5"     5#     5$     