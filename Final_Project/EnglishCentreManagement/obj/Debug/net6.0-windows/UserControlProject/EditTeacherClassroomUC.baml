   M S B A M L   `   `   `  ����R  NEnglishCentreManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:EnglishCentreManagementEnglishCentreManagement  5   	   g8clr-namespace:EnglishCentreManagement.UserControlProject*EnglishCentreManagement.UserControlProject  5   	   g8clr-namespace:EnglishCentreManagement.UserControlProject*EnglishCentreManagement.UserControlProject  5
   	   U/clr-namespace:EnglishCentreManagement.ViewModel!EnglishCentreManagement.ViewModel  5   	   G    AEnglishCentreManagement.UserControlProject.EditTeacherClassroomUC   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:EnglishCentreManagement     5   	   Guc8clr-namespace:EnglishCentreManagement.UserControlProject     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	   Jusercontrol8clr-namespace:EnglishCentreManagement.UserControlProject  5
   	   ?	viewmodel/clr-namespace:EnglishCentreManagement.ViewModel  5   	   -   5        $��EditClassRoom��5   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignFont#���  5   	   
�������.��56      �� $
��1000��6      MaterialDesignCardBackground.  (MaterialDesignThemes.Wpf.ColorZoneAssist   
Background# �  57        PrimaryHueMidBrush   
Foreground# �  58         Mode$ Custom=�59       " MaterialDesignFilledTabControl#��[ 5:      .@�5;   
   �� $��List students��6   .��5<      &   System.Windows.Controls.DataGrid  $��10q�6      AutoGenerateColumns$ False��5=         CanUserAddRows$ False��5>         HeadersVisibility$	 All=�5?      ��5@      �� *ListStudent+ �� UpdateSourceTrigger$ PropertyChanged=�	   Columns	 5A      0  *System.Windows.Controls.DataGridTextColumn  5B      ,  &System.Windows.Controls.DataGridColumn
   Header$
 
ID Student��5C   %   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5B   )   �� *Enter_Infor.ID+5C   %     5D      $

 Name��5E   %    5D   )   �� *
NamePerson+5E   %     5F      $
 DateBorn��5G   %    5F   )   �� *
DateBorn+ �� StringFormat$ 
yyyy-MM-dd��5G   %     5H      $
 Gender��5I   %    5H   )   �� *Gender+5I   %     5J      $
 Address��5K   %    5J   )   �� *	Address+5K   %     5L      $
 Phone number��5M   %    5L   )   �� *
PhoneNum+5M   %     5N      $
 Level��5O   %    5N   )   �� *	RankLevel+5O   %   5Q      5S      �� 5U   
   $
��Test��6   .��5V      �� ��6   �� *
ListTest+��5W      �� 5X      .R�5Y      ��  �� Orientation$ 
Horizontal=�6%   .+�5Z      �� $
��10 5q�6%   $��Center=�5[   %   ���#e0f7fa���#00bfe5 & "MaterialDesignIconForegroundButton#��[ 5a   %    � ToolTip$
 Edit��5b   %   ��5^   %   ��  �� ElementName$ ManageClassroom�� �� Path$, &DataContext.ShowCreatScoreBoardCommand���5_   %   �� *IDTest+{�5`   %   �� *ControlsEnabled+.��5c   "   '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ ClipboardEditOutline=�6:   $��20��6V   $��20��6b   5d      �� 5f      $
��10 5q�6%   $��Center=�5g   %   ���#fff3e0���#ef6c00#��[ 5m   %   $ Delete��5n   %   ��5j   %   �� $ ManageClassroom��$# DataContext.DeleteTestCommand���5k   %   �� *IDTest+{�5l   %   �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window.��5o   "     $ DeleteForever=�6:   $��20��6P   $��20��6\   5p      �� 5r      $
��30 5q�6(   $��Center=�66   $��20(�5s   D   
���   ���6,   �� *IDTest+6R   5u      5w      5y      5z      5|      5}      