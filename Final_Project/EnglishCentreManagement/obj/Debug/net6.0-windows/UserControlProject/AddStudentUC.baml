   M S B A M L   `   `   `  ����R  NEnglishCentreManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullg8clr-namespace:EnglishCentreManagement.UserControlProject*EnglishCentreManagement.UserControlProject  5      g8clr-namespace:EnglishCentreManagement.UserControlProject*EnglishCentreManagement.UserControlProject  5      =    7EnglishCentreManagement.UserControlProject.AddStudentUC   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jlocal8clr-namespace:EnglishCentreManagement.UserControlProject     5      Guc8clr-namespace:EnglishCentreManagement.UserControlProject     5      _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	      Z VFontAwesome.WPF, Version=4.7.0.37774, Culture=neutral, PublicKeyToken=0758b07a11a4f466-fa$http://schemas.fontawesome.io/icons/  5
      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      -   5        $��AddStudents��5         MaterialDesignBody#���   5      $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5      
������   MaterialDesignFont#���  5      $	��598��5      $
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
Horizontal=�6   $��1��66   .+�52      %  MaterialDesignThemes.Wpf.Badged  $��Center=�6,   $��10 0 0 0q�6G   .��53      �� -   5         ��Name$ txbUser��53   "   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Name, ID��55       % !MaterialDesignFloatingHintTextBox#��[ 56      $	��300��6U   ��54      �� *Name+ �� UpdateSourceTrigger$ PropertyChanged=�.��56   b   57      58      �� 5:      $��50��6   
�������
���   �$��5 0 5 0q�5>      ��5;      0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ Search=�   Size 15{�5=      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window��5?      �� *
ShowSearch+�� 5A      $��50��6   
�������$��	5 0 200 0q�5E      ��5B        $ Reload=� 15{�5C      �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window��5F      �� *
ShowLoad+�� 5H      $��65��6   $��65��6(   ��5I        $ HeadPlusOutline=� 35{�5J      �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window��5K      �� *ShowCreateStudentDialog+5L      5M      5N      �� 5P   
   $��1��6   $ 20��6   ���#81d4fa���#696969$��2q�6[   $��	0 0 2.5 0q�6o   ._�5Q      &   System.Windows.Controls.DataGrid  -   5          Name$ dtgStudy��5Q      $��10(�6)   $��10q�67     DataGridStyle1#���  6C     DataGridCellStyle1   	CellStyle# �  6l     DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  6�     DataGridRowStyle1   RowStyle# �  6�   ���#fff8e1$
��Bold"�5R   8   ��6   �� *
Students+   Columns 5S      0  *System.Windows.Controls.DataGridTextColumn  5T      ,	  &System.Windows.Controls.DataGridColumn 	  Header$ ID��6)    	  
IsReadOnly$
 True��65    	  CanUserResize$
 True��6G    	  Width5
  /System.Windows.Controls.DataGridLengthConverter$ 50
 5U   )      FontSize$ 9Q�6W   1  +System.Windows.Controls.DataGridBoundColumn   Binding 64   �� *Enter_Infor.ID+6W     5W      $
 Name��6)   $
 True��67   $
 True��6I   $ 70
 5X   )   $ 9Q�6S    64   �� *
NamePerson+6S     5Z      $ Gender��6)   $
 True��69   $
 True��6K   $ 70
 5[   )   $ 9Q�6O    64   �� *Gender+6O     5]      $ Birth��6)   $
 True��68   $
 True��6J   $ 70
 5^   )   $ 9Q�6Q    64   �� *
DateBorn+6Q     5`      $ Phone��6)   $
 True��68   $
 True��6J   $ 70
 5a   )   $ 9Q�6Q    64   �� *
PhoneNum+6Q     5c      $ Address��6)   $
 True��6:   $
 True��6L   $ 70
 5d   )   $ 9Q�6P    64   �� *	Address+6P     5f      $
 Card��6)   $
 True��67   $
 True��6I   $ 70
 5g   )   $ 9Q�6U    64   �� *IdentityCard+6U     5i      $ Level��6)   $
 True��68   $
 True��6J   $ 70
 5j   )   $ 9Q�6R    64   �� *	RankLevel+6R     5l      $
 User��6)   $
 True��67   $
 True��6I   $ 80
 5m   )   $ 9Q�6]    64   �� *Enter_Infor.UserName+6]     5o      $ PassWord��6)   $
 True��6;   $
 True��6M   $ 80
 5p   )   $ 9Q�6]    64   �� *Enter_Infor.Password+6]     5r      $ Email��6)   $
 True��68   $
 True��6J   $ 70
 5s   )   $ 9Q�6Z    64   �� *Enter_Infor.Email+6Z   4  .System.Windows.Controls.DataGridTemplateColumn  5u      $ 
Operations��6-   $
 True��6A   $
 auto
 6S      CellTemplate 5v      �� 5w      .R�5x   "   �� $ 
Horizontal=�6-   .+�5y   &   ��   gridEditButton#��[ 6-   ��5z   -   �� *DataContext.EditCommand+ �� ElementName$ AddStudents����5{   -   �� *Enter_Infor.ID+.��5|   *   "  FontAwesome.WPF.ImageAwesome     Icon$ PencilSquareOutline=�6:    	 gridButtonIcon#��[	 6U   5}   '   �� 5   &    
 gridDetailButton#��[
 6-   $��5 0 0 0 q�5�   Y   ��5�   -   �� *DataContext.RemoveCommand+$ AddStudents����5�   -   �� *Enter_Infor.ID+.��5�   *     $ Eraser=�6:   #��[	 6H   5�   '   5�   #   5�      5�      5�      5�      5�      5�      