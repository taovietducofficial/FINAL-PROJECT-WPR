   M S B A M L   `   `   `  ����  EnglishCentreManagement;    5EnglishCentreManagement.Dialog.ManageClassroomsDialog   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5        $��ManageClassroom��5   	      MaterialDesignBody#���   5   	   $��Regular"�5	   	   $��13(�5
   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignFont#���  5   	   $	��598��5   8   $
��1008��6E    � Title 6	   �� *CurrentClassroom.IDClassroom+.��5      �� $
��1000��6      MaterialDesignCardBackground.  (MaterialDesignThemes.Wpf.ColorZoneAssist   
Background# �  5        PrimaryHueMidBrush   
Foreground# �  5         Mode$ Custom=�5       " MaterialDesignFilledTabControl#��[ 5      .@�5   
   �� $��List students��6   .��5      �  � RowDefinitions 5      �� 5      $��* �6$   �� 5      $��50 �6$   .+�5      &   System.Windows.Controls.DataGrid  $��10q�6      AutoGenerateColumns$ False��5         CanUserAddRows$ False��5      	   HeadersVisibility$		 All=�5      ��5       �� *ListStudent+
 �� UpdateSourceTrigger$
 PropertyChanged=�   Columns 5!      0  *System.Windows.Controls.DataGridTextColumn  5"      ,  &System.Windows.Controls.DataGridColumn   Header$ 
ID Student��5#   )      
IsReadOnly$
 True��5$   )   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5"   -   �� *Enter_Infor.ID+5$   )     5&      $
 Name��5'   )   $
 True��5(   )    5&   -   �� *
NamePerson+5(   )     5*      $ DateBorn��5+   )   $
 True��5,   )    5*   -   �� *
DateBorn+ �� StringFormat$ 
yyyy-MM-dd��5,   )     5.      $ Gender��5/   )   $
 True��50   )    5.   -   �� *Gender+50   )     52      $ Address��53   )   $
 True��54   )    52   -   �� *	Address+54   )     56      $ Phone number��57   )   $
 True��58   )    56   -   �� *
PhoneNum+58   )     5:      $ Level��5;   )   $
 True��5<   )    5:   -   �� *	RankLevel+5<   )   5>      �� 5@      $��1��6   $��	50,0,50,0q�5A      $	��200��5B      $��30��5C      $��Center=�5D      ���#e0f7fa���#00bfe5+  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 25��5H      
������  � ToolTip$
 Edit��5K      $��2��6(   ��5G      �� *UpdateStudentLevelCommand+{�5J      �� *ControlsEnabled+.��5L      ��  �� Orientation$ 
Horizontal=�6!   .+�5M      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ ArrowUpCircleOutline=�62   �� 5O      $��Update level student��6$   $��Montserrat )�6@   5P      5Q      5R      5S      �� 5U   
   $
��Test��6   .��5V      �  5W      �� 5X      $��7* �6$   �� 5Y      $��* �6$   .+�5\      �� $��0��6   ��5]      �� *
ListTest+��5^      �� 5_      .R�5`      �� $ 
Horizontal=�6)   .+�5a   "   �� $
��10 5q�6)   $��Center=�5b   )   ���#e0f7fa���#00bfe5 & "MaterialDesignIconForegroundButton#��[ 5h   )   $
 Edit��5i   )   ��5e   )   ��  �� ElementName$ ManageClassroom�� �� Path$, &DataContext.ShowCreatScoreBoardCommand���5f   )   �� *IDTest+{�5g   )   �� *ControlsEnabled+.��5j   &     $ ClipboardEditOutline=�6>   $��20��6Z   $��20��6f   5k   #   �� 5m   "   $
��10 5q�6)   $��Center=�5n   %   ���#fff3e0���#ef6c00#��[ 5t   %   $ Delete��5u   %   ��5q   %   �� $ ManageClassroom��$# DataContext.DeleteTestCommand���5r   %   �� *IDTest+{�5s   %   �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window.��5v   &     $ DeleteForever=�6>   $��20��6T   $��20��6`   5w   #   �� 5y   "   $
��30 5q�6,   $��Center=�6:   $��20(�5z   D   
���   ���6,   �� *IDTest+6R   5{      5|      5~      �� 5�      $��1��6   $��10q�5�      $	��900��5�      $��45��5�      $��Center=�5�      ���#e0f7fa���#00bfe5$ 25��5�      $
 Edit��5�      ��5�      �� $ ManageClassroom��$' !DataContext.ShowAddNewTestCommand���5�      �� *IDTest+{�5�      �� *ControlsEnabled+.��5�      �� $ 
Horizontal=�6!   .+�5�        $ 
PencilPlus=�62   �� 5�      $��Create a new test��6$   5�      5�      5�      5�      5�      5�      