   M S B A M L   `   `   `  ����R  NEnglishCentreManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullO,clr-namespace:EnglishCentreManagement.DialogEnglishCentreManagement.Dialog  5   	   8    2EnglishCentreManagement.Dialog.YourTestInClassroom   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   >local,clr-namespace:EnglishCentreManagement.Dialog     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � WindowStartupLocation$  CenterScreen=�5	   	    � Title$ YourTestInClassroom��5
   	   $	��600��6%   $	��900��62   .��5      �  � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��	50,0,50,0q�5      $	��200��5      $��30��5      $��Right=�5      $��Center=�5      ���#e0f7fa���#00bfe5+  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 25��5      
������  � ToolTip$ final rusult��5      $��2��6(   ��5      �� *ShowFinalResultCommand+{�5      �� *ControlsEnabled+.��5      ��  �� Orientation$ 
Horizontal=�6   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$
 Plus=�6*   �� 5!      $��Show final result��6   5"      5#      �� 5%   
   $��1��5&      ��5%      �� *Tests+��5'      �� 5(      .R�5)      �� $ Vertical=�6!   .+�5*      �� $��50(�5+       $
��Bold"�6.   ��5*   $   �� *
WeekNumber+5+   .   &   System.Windows.Controls.DataGrid  5-      $	��900��5.   #      AutoGenerateColumns$ False��5/   #      CanUserDeleteRows$ False��50   #   ��5-   #   �� *	Results+	   Columns	 51      0  *System.Windows.Controls.DataGridTextColumn  52   "   ,  &System.Windows.Controls.DataGridColumn
   Header$
 ID Test��65      MinWidth$	 200Q�53   1      
IsReadOnly$
 True��54   1   1  +System.Windows.Controls.DataGridBoundColumn   Binding 55   1   �� *IdTest+  57   "   $
 	Time Span��65   $	 200Q�58   1   $
 True��59   1    5:   1   �� *TestIns.TimeTesting+  5<   "   $
 Description��65   $	 400Q�5=   1   $
 True��5>   1    5?   1   �� *TestIns.Description+  5A   "   $
 Point��65   $
 True��5B   1    5C   1   �� *Point+5E      5F      5G      5I      5J      5K      