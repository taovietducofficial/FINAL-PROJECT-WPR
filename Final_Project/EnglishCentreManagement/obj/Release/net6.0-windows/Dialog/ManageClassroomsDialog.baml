   M S B A M L   `   `   `  ����   EnglishCentreManagement;    5EnglishCentreManagement.Dialog.ManageClassroomsDialog   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  -   $��ManageClassroom��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignFont#���  $	��598��$
��1008�� � Title �� *CurrentClassroom.IDClassroom+.���� $
��1000��   MaterialDesignCardBackground.  (MaterialDesignThemes.Wpf.ColorZoneAssist   
Background# �    PrimaryHueMidBrush   
Foreground# �     Mode$ Custom=� " MaterialDesignFilledTabControl#��[ .@��� $��List students��.���  � RowDefinitions �� $��* ��� $��50 �.+�&   System.Windows.Controls.DataGrid  $��10q�   AutoGenerateColumns$ False��   CanUserAddRows$ False��	   HeadersVisibility$		 All=����� *ListStudent+
 �� UpdateSourceTrigger$
 PropertyChanged=�   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ 
ID Student��   
IsReadOnly$
 True��1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *Enter_Infor.ID+  $
 Name��$
 True�� �� *
NamePerson+  $ DateBorn��$
 True�� �� *
DateBorn+ �� StringFormat$ 
yyyy-MM-dd��  $ Gender��$
 True�� �� *Gender+  $ Address��$
 True�� �� *	Address+  $ Phone number��$
 True�� �� *
PhoneNum+  $ Level��$
 True�� �� *	RankLevel+�� $��1��$��	50,0,50,0q�$	��200��$��30��$��Center=����#e0f7fa���#00bfe5+  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 25��
������  � ToolTip$
 Edit��$��2������ *UpdateStudentLevelCommand+{��� *ControlsEnabled+.����  �� Orientation$ 
Horizontal=�.+�'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ ArrowUpCircleOutline=��� $��Update level student��$��Montserrat )��� $
��Test��.���  �� $��7* ��� $��* �.+��� $��0������ *
ListTest+���� .R��� $ 
Horizontal=�.+��� $
��10 5q�$��Center=����#e0f7fa���#00bfe5 & "MaterialDesignIconForegroundButton#��[ $
 Edit������  �� ElementName$ ManageClassroom�� �� Path$, &DataContext.ShowCreatScoreBoardCommand����� *IDTest+{��� *ControlsEnabled+.��  $ ClipboardEditOutline=�$��20��$��20���� $
��10 5q�$��Center=����#fff3e0���#ef6c00#��[ $ Delete������ $ ManageClassroom��$# DataContext.DeleteTestCommand����� *IDTest+{��� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window.��  $ DeleteForever=�$��20��$��20���� $
��30 5q�$��Center=�$��20(�
���   ����� *IDTest+�� $��1��$��10q�$	��900��$��45��$��Center=����#e0f7fa���#00bfe5$ 25��$
 Edit������ $ ManageClassroom��$' !DataContext.ShowAddNewTestCommand����� *IDTest+{��� *ControlsEnabled+.���� $ 
Horizontal=�.+�  $ 
PencilPlus=��� $��Create a new test��