   M S B A M L   `   `   `  ����R  NEnglishCentreManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullg8clr-namespace:EnglishCentreManagement.UserControlProject*EnglishCentreManagement.UserControlProject  5      g8clr-namespace:EnglishCentreManagement.UserControlProject*EnglishCentreManagement.UserControlProject  5	      B    <EnglishCentreManagement.UserControlProject.CalculateSalaryUC   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Z VFontAwesome.WPF, Version=4.7.0.37774, Culture=neutral, PublicKeyToken=0758b07a11a4f466-fa$http://schemas.fontawesome.io/icons/  5      Dlocal8clr-namespace:EnglishCentreManagement.UserControlProject  5      Auc8clr-namespace:EnglishCentreManagement.UserControlProject  5	      -   5        $��CalculateSalary��5      .��5      �   � RowDefinitions  5   
   �� 5      $	��100 �6   �� 5      $��* �6   .+�5   
   �� $��0��6    �� CornerRadius$ 20��6   ���#e4ff54���#e9573b$��5q�6[   ._�5      �  � ColumnDefinitions 5      �� 5      $	��300 �6'   �� 5      $	��500 �6'   �� 5      $��* �6'   .+�5      ��  �� Orientation$ 
Horizontal=�6   $��0��66   .+�5      ]� $	��Top=�6    $��Center=�68    � ForceCursor$
 True��6U   $��
 10 5 5 0 q�6h   .+�5      �� $��60��6!   $��60��6,    �� Padding$ 3q�68   ���#ffff00$	 100��6Y   $	��Top=�6l   $��Center=�6�   $��2q�6�   
���   �._�5       '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ ChartBubble=�66   ���#835cc7$��Center=�6^   $��Center=�6{   $��40��6�   $��40��6�   5!      5"      �� 5#      $ Vertical=�6!   .+�5$      6   0EnglishCentreManagement.UserControlProject.TagUC  
 � Tag$ ChartScatterPlotHexbin��6#   $	��100��6@   $
��auto��6L      Text$ Salary��6Z   $��18(�6h   $	��Top=�6v   $��5q�6�   �� 5%      $ 
Horizontal=�6%   .+�5&      �� $��Manage��6(      txtInforMain#��[  66   
���   �$��0 0 5 0q�6p     5'      $ CastEducation=�66   5(      5)      5*      �� 5,      $ 
Horizontal=�6   $��1��66   .+�5.      %  MaterialDesignThemes.Wpf.Badged  $��Center=�6,   $��10 0 0 0q�6G   .��5/      �� -   5        	 ��Name$	 txbUser��5/   "   )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Name, ID��51       % !MaterialDesignFloatingHintTextBox#��[ 52      $	��300��6U   ��50      �� *Name+ �� UpdateSourceTrigger$ PropertyChanged=�.��52   b   53      54      �� 56      $��50��6   
�������
���   �$��5 0 5 0q�5:      ��57      0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ Search=�   Size 15{�59      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window��5;      �� *
ShowSearch+�� 5=      $��50��6   
�������$��	5 0 200 0q�5A      ��5>        $ Reload=� 15{�5?      �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window��5B      �� *
ShowLoad+5D      �� 5F      $ 20��6   
���   �$��2q�6?   $��2q�6S   $
��auto��6^   $��2��6l   ._�5G      �� $ 
Horizontal=�6!   $��	10 0 10 0q�6:   .+�5H        $ 	Billboard��6#   
���  ��$ 	Statistic��6D   $��16(�6U   �� 5I      $��10q�6!   $��70��6-   $��60��68   ��5J        $! ChartTimelineVariantShimmer=� 30{�5K      �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window��5L      �� *ShowTeacherStatisticsDialog+5M      5N      5P      5Q      �� 5S   
   $��1��6   $ 30��6   ���#e4ff54���#44743f$��5q�6[   $��	0 0 2.5 0q�6o   ._�5T      &   System.Windows.Controls.DataGrid  -   5          Name$ 	dtgSalary��5T      $��12q�6*     DataGridStyle1#���  66     DataGridCellStyle1   	CellStyle# �  6_     DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  6�     DataGridRowStyle1   RowStyle# �  6�   ���#fff8e1$��SemiBold"�6d  ��6D  �� *	Salarys+   Columns 5U      0  *System.Windows.Controls.DataGridTextColumn  5V      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6)      
IsReadOnly$
 True��65      CanUserResize$
 True��5W         Width5	  /System.Windows.Controls.DataGridLengthConverter$	 100	 6)   1
  +System.Windows.Controls.DataGridBoundColumn 
  Binding 65   �� *Teacher.Enter_Infor.ID+  5Y      $
 Name��6)   $
 True��67   $
 True��5Z      $	 150	 6)    65   �� *Teacher.NamePerson+  5\      $ Class(N)��6)   $
 True��6;   $
 True��5]      $	 100	 6)    65   �� *Statistics.NumberOfClass+  5_      $ 
Student(N)��6)   $
 True��6=   $
 True��5`      $	 100	 6)    65   �� *Statistics.NumberOfStudent+  5b      $ 
Bank (add)��6)   $
 True��6=   $
 True��5c      $	 100	 6)    65   �� *Teacher.BankNumber+  5e      $ RatePass (%)��6)   $
 True��6?   $
 True��5f      $	 120	 6)    65   �� *Statistics.GraduateRate+ �� StringFormat$ 
{0:#,0.00}��  5h      $ 
Evaluation��6)   $
 True��6=   $	 100	 5i       6    �� *Statistics.Evaluation+4  .System.Windows.Controls.DataGridTemplateColumn  5k      $ 
Total(Sal)��6-   $	 100	 6A      CellTemplate 5l      �� 5m      .R�5n   "   �� #��[  6,   $��12(�6R   $��Center=�6`   $��Center=�6{   ��6�   �� *Teacher.Salary+5o      5q        5t      $ 
Operations��6-   $ *	 6A   $ False��6K    5u      �� 5v      .R�5w   "   �� $ 
Horizontal=�6-   .+�5x   &   ��   gridEditButton#��[ 6-   ��6U   �� *DataContext.EditCommand+ �� ElementName$ CalculateSalary����6�   �� *Teacher.Enter_Infor.ID+.��5y   *   "  FontAwesome.WPF.ImageAwesome     Icon$ PencilSquareOutline=�6:     gridButtonIcon#��[ 6U   5z   '   �� 5{   &     gridDetailButton#��[ 6-   ��6W   �� *DataContext.DetailCommand+$ CalculateSalary����6�   �� *Teacher.Enter_Infor.ID+.��5|   *     $ 
Slideshare=�6:   #��[ 6L   5}   '   5~   #   5      5�      5�      5�      5�      5�      