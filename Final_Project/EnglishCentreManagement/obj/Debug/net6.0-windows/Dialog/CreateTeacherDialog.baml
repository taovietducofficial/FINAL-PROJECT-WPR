   M S B A M L   `   `   `  ����R  NEnglishCentreManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullO,clr-namespace:EnglishCentreManagement.DialogEnglishCentreManagement.Dialog  5   	   g8clr-namespace:EnglishCentreManagement.UserControlProject*EnglishCentreManagement.UserControlProject  5   	   8    2EnglishCentreManagement.Dialog.CreateTeacherDialog   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   >local,clr-namespace:EnglishCentreManagement.Dialog     5   	   Guc8clr-namespace:EnglishCentreManagement.UserControlProject     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   Z VFontAwesome.WPF, Version=4.7.0.37774, Culture=neutral, PublicKeyToken=0758b07a11a4f466-fa$http://schemas.fontawesome.io/icons/  5	   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5
   	   -   5          �Name$  createTeacher��5   	    � Title$ CreateStudentDialog��5   	   $	��660��6%   $	��500��62      MaterialDesignFont#���   5   	    � WindowStyle$
 None=�5   	     MaterialDesignBody#���  5   	   $��Regular"�5   	    � WindowStartupLocation$ CenterScreen=�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	   .��5      �  � ColumnDefinitions 5   
   �� 5      $	��150 �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $	��600 �6   �� 5      $��* �6   .+�5!   
   ��  �� Orientation$ Vertical=�6   $��0��6,   $��0��6<   .+�5"      6   0EnglishCentreManagement.UserControlProject.TagUC  
	 � Tag$	 Account��6   
   Text$
  Name :��6%   $��	Montserra)�64   $��13(�6K   $��5 7 5 5q�6Y     5$      $	 CakeVariantOutline��6   $
  Brith :��60   $��	Montserra)�6@   $��13(�6W   $��5q�6e     5&      $	 FilePhoneOutline��6   $
  Phone :��6.   $��	Montserra)�6>   $��13(�6U   $��5q�6c   �� 5(      $ 
Horizontal=�6   $��5q�62   .+�5)      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ GenderFemale=�6*   $��25��6>   $��25��6I   $��Center=�6U   $��Center=�6p     5+      $	 
GenderMale��6   $
 	Gender : ��6,   $��Center=�6>   $��Center=�6Y   5,        5.      $
	 Home��6   $
 
 Address :��6"   $��	Montserra)�64   $��13(�6K   $��5q�6Y     50      $	 CardAccountDetailsOutline��6   $
 Identify card : ��67   $��	Montserra)�6O   $��13(�6f   $��5q�6t     52      $
	 Bank��6   $
 Bank :��6"   $��	Montserra)�60   $��13(�6G   $��5q�6U     54      $	 HeadSnowflakeOutline��6   $
 Level :��62   $��	Montserra)�6A   $��13(�6X   $��5q�6f     56      $	 AccountLock��6   $
 User :��6)   $��	Montserra)�67   $��13(�6N   $��5q�6\     58      $	 Password��6   $
 Password : ��6&   $��	Montserra)�69   $��13(�6P   $��5q�6^     5:      $	 Email��6   $
 Email :��6#   $��	Montserra)�62   $��13(�6I   $��5q�6W     5<      $	 ShieldKeyOutline��6   $

 ID :��6.   $��	Montserra)�6:   $��13(�6Q   $��5q�6_   5=      �� 5?   
   -   5         ��Name$	 Add��5?      $��0��5@      $��1��6!   $	��100��6.   
��� ��� + 'MaterialDesignRaisedSecondaryDarkButton#��[ 5D       � ToolTip$< 6Resource name: MaterialDesignRaisedSecondaryDarkButton��5E      ��5A      0  *MaterialDesignThemes.Wpf.PackIconExtension  *	PenPlus+   Size 20��5B      �� *AddOrSaveCommand+��66   ��  �� ElementName$ createTeacher��{�5C      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window5E      �� 5G   
   -   5        $ Cancel��5G      $��1��5H      $��1��6!   $��50��6.   $��Center=�5I      $��Right=�6,   $��0 0 5 0q�6H    , (MaterialDesignRaisedSecondaryLightButton#��[ 5K      $= 7Resource name: MaterialDesignRaisedSecondaryLightButton��5L      $��SemiBold"�5M   R   
�������
���  ��{�5J      �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window��5M           Kind$ BackspaceReverseOutline=���5N      �� *CancelCommand+��63   �� $ createTeacher���� 5P   
   -   5        $
 Save��5P      $��1��5Q      $��1��6!   $	��100��6.   $��Center=�6:   $
��Left=�6U   $��5 0 0 0q�6p   #��[ 5S      $= 7Resource name: MaterialDesignRaisedSecondaryLightButton��5T      $��SemiBold"�5U   Y   {�5R      �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window��5U        $ ContentSaveEditOutline=� 20��5V      �� *AddOrSaveCommand+��66   �� $ createTeacher���� 5X   
   $��1��6   $��0��6%   $ Vertical=�62   .+�5Y      �� -   5         ��Name$ 
NamePerson��5Y   "   $	��300��6   $
��Left=�5Z       % !MaterialDesignFloatingHintTextBox#��[ 5[      ��5\      �� *CurrentTeacher.NamePerson+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�(  "System.Windows.Controls.DatePicker  5^        MaterialDesignDatePicker#��[ 6   $��0 20 0 0q�5_      $
��Left=�5`      $	��300��5a         SelectedDateFormat$ Short=�5b         DisplayDateStart 4/5/19505c         DisplayDateEnd 4/5/20245d      $��2��63      SelectedDate 5e      �� *CurrentTeacher.DateBorn+$ TwoWay=�$ PropertyChanged=��� 5g      -   5        $ Phone��5g   "   $	��300��6   $��Bottom=�5h      $
��Left=�5i      #��[ 5j      $��0 18 0 0q�5l      ��5k      �� *CurrentTeacher.PhoneNum+$ PropertyChanged=�$ TwoWay=�5l      �� 5n      $	��300��5o      $��30��6#   $��0 18 0 0q�6/   $
��Left=�6A   )  #MaterialDesignThemes.Wpf.HintAssist   Hint 5n        $	 Man=� 20��5p      �� *
ListGender+ �� SelectedItem 5q      �� 5r      $ TwoWay=�6    �� Path$ CurrentTeacher.Gender�6,   $ PropertyChanged=�6I   5t      �� 5v      -   5        $ Address��5v   "   $	��300��6   $��Bottom=�5w      $
��Left=�5x      #��[ 5y      $��0 10 0 0q�5{      ��5z      �� *CurrentTeacher.Address+$ PropertyChanged=�$ TwoWay=�5{      �� 5}      -   5        $ IdentityCard��5}   "   $	��300��6   $��Bottom=�5~      $
��Left=�5      #��[ 5�      $��0 17 0 0q�5�      ��5�      �� *CurrentTeacher.IdentityCard+$ PropertyChanged=�$ TwoWay=�5�      �� 5�      -	   5        $
 Bank��5�   "   $	��300��6   $��Bottom=�60   $
��Left=�5�      #��[ 61   $��0 16 0 0q�5�      ��5�      �� *CurrentTeacher.BankNumber+$ PropertyChanged=�$ TwoWay=�5�      �� 5�      $	��300��5�      $��30��6#   $��0 22 0 0q�6/   $
��Left=�6A    5�        $ LevelCrossingSignals=� 20��5�      �� *Levels+ 5�      �� 5�      $ TwoWay=�6   $ CurrentTeacher.RankLevel�5�      $ PropertyChanged=�6>   5�      5�      �� 5�      -
   5        $ userName��5�   "   $	��300��6   $��Bottom=�5�      $
��Left=�5�      #��[ 5�      $��0 17 0 0q�5�   A   ��5�      �� *%#CurrentTeacher.Enter_Infor.UserName+$ PropertyChanged=�$ TwoWay=� �� 
IsReadOnly 5�      �� *CanReadonlyUserName+6A   �� 5�      -   5        $ Password��5�   "   $	��300��6   $��Bottom=�5�      $
��Left=�5�      #��[ 5�      $��0 15 0 0q�5�   A   ��5�      �� *%#CurrentTeacher.Enter_Infor.Password+$ PropertyChanged=�$ TwoWay=� 5�      �� *CanReadonlyPassword+6A   �� 5�      -   5        $ Email��5�   "   $	��300��6   $��Bottom=�5�      $
��Left=�5�      #��[ 5�      $��0 15 0 0q�5�      ��5�      �� *" CurrentTeacher.Enter_Infor.Email+$ PropertyChanged=�$ TwoWay=�5�      �� 5�      -   5        $ ID��5�   "   $	��300��6   $��Bottom=�5�      $
��Left=�5�      #��[ 5�      $��0 16 0 0q�5�   :   ��5�      �� *	TeacherId+$ PropertyChanged=�$ TwoWay=� 5�      �� *CanReadonlId+6:   5�      5�      5�      