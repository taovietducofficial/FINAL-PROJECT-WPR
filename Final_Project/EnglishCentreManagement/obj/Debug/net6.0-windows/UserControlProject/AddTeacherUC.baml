   M S B A M L   `   `   `  ����R  NEnglishCentreManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullg8clr-namespace:EnglishCentreManagement.UserControlProject*EnglishCentreManagement.UserControlProject  5      g8clr-namespace:EnglishCentreManagement.UserControlProject*EnglishCentreManagement.UserControlProject  5      =    7EnglishCentreManagement.UserControlProject.AddTeacherUC   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jlocal8clr-namespace:EnglishCentreManagement.UserControlProject     5      Guc8clr-namespace:EnglishCentreManagement.UserControlProject     5      _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	      Z VFontAwesome.WPF, Version=4.7.0.37774, Culture=neutral, PublicKeyToken=0758b07a11a4f466-fa$http://schemas.fontawesome.io/icons/  5
      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      -   5        $��AddTeachers��5         MaterialDesignBody#���   5      $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5      
������   MaterialDesignFont#���  5      $	��598��5      $
��1008��6   .��5      �  � RowDefinitions 5   
   �� 5      $��90 �6   �� 5      $��* �6   .+�5   
   �� $��0��6    �� CornerRadius$ 20��6   ���#fafafa���#e9573b$��2q�6[   ._�5      �  � ColumnDefinitions 5      �� 5      $	��300 �6'   �� 5      $��* �6'   .+�5"      ��  �� Orientation$ 
Horizontal=�6   $��0��66   .+�5#      ]� $	��Top=�6    $��Center=�68    � ForceCursor$
 True��6U   $��
 10 5 5 0 q�6h   .+�5$      �� $��60��6!   $��60��6,    �� Padding$ 3q�68   ���#ffff00$	 100��6Y   $	��Top=�6l   $��Center=�6�   $��2q�6�   
���   �._�5%      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ AccountDetailsOutline=�66   ���#835cc7$��Center=�6h   $��Center=�6�   $��40��6�   $��40��6�   5&      5'      �� 5(      $ Vertical=�6!   .+�5)      6   0EnglishCentreManagement.UserControlProject.TagUC  
	 � Tag$	 
PencilPlus��6#   $	��100��64   $
��auto��6@   
   Text$

 Task��6N   $��18(�6Z   $	��Top=�6h   $��5q�6�   �� 5*      $ 
Horizontal=�6%   .+�5+      �� $��Manage��6(     txtInforMain#��[ 66   
���   �$��0 0 5 0q�6p     5,      $ CastEducation=�66   5-      5.      5/      �� 51      $ 
Horizontal=�6   $��1��66   .+�53      %  MaterialDesignThemes.Wpf.Badged  $��Center=�6,   $��10 0 0 0q�6G   .��54      �� -   5         ��Name$ txbUser��54   "   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Name, ID��56       % !MaterialDesignFloatingHintTextBox#��[ 57      $	��300��6U   ��55      �� *Name+ �� UpdateSourceTrigger$ PropertyChanged=�.��57   b   58      59      �� 5;      $��50��6   
�������
���   �$��5 0 5 0q�5?      ��5<      0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ Search=�   Size 15{�5>      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window��5@      �� *
ShowSearch+�� 5B      $��50��6   
�������$��	5 0 200 0q�5F      ��5C        $ Reload=� 15{�5D      �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window��5G      �� *
ShowLoad+�� 5I      $��65��6   $��65��6(   ��5J        $ HeadPlusOutline=� 35{�5K      �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window��5L      �� *ShowCreateTeacherDialog+5M      5N      5O      �� 5Q   
   $��1��6   $ 20��6   ���#81d4fa���#696969$��2q�6[   $��	0 0 2.5 0q�6o   ._�5R      &   System.Windows.Controls.DataGrid  -   5          Name$ dtgTeach��5R      $��10(�6)   $��10q�67     DataGridStyle1#���  5S        DataGridCellStyle1   	CellStyle# �  6@     DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  5T        DataGridRowStyle1   RowStyle# �  5U      ���#fff8e1$
��Bold"�5V   8   ��6   �� *
Teachers+   Columns 5W      0  *System.Windows.Controls.DataGridTextColumn  5X      ,	  &System.Windows.Controls.DataGridColumn 	  Header$ ID��6)    	  
IsReadOnly$
 True��65    	  CanUserResize$
 True��6G    	  Width5
  /System.Windows.Controls.DataGridLengthConverter$ 50
 5Y   )      FontSize$ 9Q�6W   1  +System.Windows.Controls.DataGridBoundColumn   Binding 64   �� *Enter_Infor.ID+6W     5[      $
 Name��6)   $
 True��67   $
 True��6I   $ 70
 5\   )   $ 9Q�6S    64   �� *
NamePerson+6S     5^      $ Gender��6)   $
 True��69   $
 True��6K   $ 70
 5_   )   $ 9Q�6O    64   �� *Gender+6O     5a      $ Birth��6)   $
 True��68   $
 True��6J   $ 70
 5b   )   $ 9Q�6Q    64   �� *
DateBorn+6Q     5d      $ Phone��6)   $
 True��68   $
 True��6J   $ 70
 5e   )   $ 9Q�6Q    64   �� *
PhoneNum+6Q     5g      $ Address��6)   $
 True��6:   $
 True��6L   $ 70
 5h   )   $ 9Q�6P    64   �� *	Address+6P     5j      $
 Card��6)   $
 True��67   $
 True��6I   $ 70
 5k   )   $ 9Q�6U    64   �� *IdentityCard+6U     5m      $
 Bank��6)   $
 True��67   $
 True��6I   $ 70
 5n   )   $ 9Q�6S    64   �� *
BankNumber+6S     5p      $ Salary��6)   $
 True��69   $
 True��6K   $ 70
 5q   )   $ 9Q�6O    64   �� *Salary+6O     5s      $ Level��6)   $
 True��68   $
 True��6J   $ 70
 5t   )   $ 9Q�6R    64   �� *	RankLevel+6R     5v      $
 User��6)   $
 True��67   $
 True��6I   $ 80
 5w   )   $ 9Q�6]    64   �� *Enter_Infor.UserName+6]     5y      $ PassWord��6)   $
 True��6;   $
 True��6M   $ 80
 5z   )   $ 9Q�6]    64   �� *Enter_Infor.Password+6]     5|      $ Email��6)   $
 True��68   $
 True��6J   $ 70
 5}   )   $ 9Q�6Z    64   �� *Enter_Infor.Email+6Z   4  .System.Windows.Controls.DataGridTemplateColumn  5~      $ 
Operations��6-   $
 True��6A   $
 auto
 6S      CellTemplate 5      �� 5�      .R�5�   "   �� $ 
Horizontal=�6-   .+�5�   &   ��   gridEditButton#��[ 6-   ��6U   �� *DataContext.EditCommand+ �� ElementName$ AddTeachers����6�   �� *Enter_Infor.ID+.��5�   *   "  FontAwesome.WPF.ImageAwesome     Icon$ PencilSquareOutline=�6:    	 gridButtonIcon#��[	 6U   5�   '   �� 5�   &    
 gridDetailButton#��[
 6-   $��5 0 0 0 q�5�   -   ��5�   W   �� *DataContext.RemoveCommand+$ AddTeachers����6�   �� *Enter_Infor.ID+.��5�   *     $ Eraser=�6:   #��[	 6H   5�   '   5�   #   5�      5�      5�      5�      5�      5�      