   M S B A M L   `   `   `  ����R  NEnglishCentreManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullg8clr-namespace:EnglishCentreManagement.Dialog.DisplayList*EnglishCentreManagement.Dialog.DisplayList  5   	   J    DEnglishCentreManagement.Dialog.DisplayList.DisplayValidTeacherDialog   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Jlocal8clr-namespace:EnglishCentreManagement.Dialog.DisplayList     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5        $��displayValidTeacherDialog��5	   	     � Title$  DisplayValidTeacherDialog��5
   	   $	��450��6+   $	��800��68   .��5      �  � RowDefinitions 5   
   �� 5      $��7* �6   �� 5      $��* �6   .+�5   
   &   System.Windows.Controls.DataGrid  $��10q�5      $��0��5         AutoGenerateColumns$ False��5         CanUserAddRows$ False��5         CanUserDeleteRows$ False��5         
IsReadOnly$
 True��5         HeadersVisibility$	 All=�5      ��5      �� *ValidTeachers+ �� SelectedItem 5      �� *SelectedTeacher+ �� Mode$ TwoWay=�	 �� UpdateSourceTrigger$	 PropertyChanged=�
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ 
ID Teacher��5   %   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5   %   �� *Enter_Infor.ID+$ TwoWay=�$	 PropertyChanged=�5   %     5      $
 Name��5   %    5   %   �� *
NamePerson+$ TwoWay=�$	 PropertyChanged=�5   %     5!      $ Level��5"   %    5!   %   �� *	RankLevel+$ TwoWay=�$	 PropertyChanged=�5"   %     5$      $ Phone number��5%   %    5$   %   �� *
PhoneNum+$ TwoWay=�$	 PropertyChanged=�5%   %     5'      $ Birthday��5(   %    5'   %   �� *
DateBorn+ �� StringFormat$ 
yyyy-MM-dd��$ TwoWay=�$	 PropertyChanged=�5(   %   5*      �� 5,   
   $��1��6   $��	50,0,50,0q�5-      $	��200��5.      $��30��5/      $��Center=�50      ���#e0f7fa���#00bfe5+  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 25��55      
������  � ToolTip$
 Edit��58      $��2��6    ��53      �� *CommitSelectTeacherCommand+��54      ��  �� ElementName$ displayValidTeacherDialog��{�57      �� *ControlsEnabled+.��59      ��  �� Orientation$ 
Horizontal=�6   .+�5:      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$
 Plus=�6*   5;      5<      5=      5>      