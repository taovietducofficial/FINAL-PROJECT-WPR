   M S B A M L   `   `   `  ����_  [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aeHclr-namespace:MaterialDesignThemes.Wpf;assembly=MaterialDesignThemes.WpfMaterialDesignThemes.Wpf  5      b ^PresentationFramework.Aero2, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35hKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2Microsoft.Windows.Themes 5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089Z VFontAwesome.WPF, Version=4.7.0.37774, Culture=neutral, PublicKeyToken=0758b07a11a4f466   txtInforMain  �� 
TargetType �� Property �� Value �� Triggers P� Property P� Value  MaterialDesignThumb �� 
TargetType ��Name �� Padding	 J� SnapsToDevicePixels   BooleanToVisibilityConverter ) %MaterialDesignGridColumnHeaderGripper
 �� BasedOn  
buttonItem 	 angle"   FontAwesome.WPF.ImageAwesome �� Path �� RelativeSource �� AncestorType  buttonMonth 
 button  	buttonBig 	 angleBig 
 textHint  textBox  DataGridStyle1&   System.Windows.Controls.DataGrid5  /System.Windows.Controls.DataGridLengthConverter ��Name � ColumnDefinitions � RowDefinitions   SelectAllCommand �� 
ResourceId �� TypeInTargetAssembly7  1System.Windows.Controls.DataGridHeadersVisibility
   All �� ConverterParameter!   HeadersVisibilityConverter �� 	ConverterG  ASystem.Windows.Controls.Primitives.DataGridColumnHeadersPresenter  Name   Column ��Name �� CanContentScroll ��Name �� ScrollableHeight � Maximum �� Orientation  �� ViewportHeight! �� ViewportSize*" �� #ComputedVerticalScrollBarVisibility# � Value$ �� Mode% �� ScrollableWidth& �� ViewportWidth,' �� %ComputedHorizontalScrollBarVisibility( ]� 
Conditions) �� Property* �� Value  DataGridCellStyle1*  $System.Windows.Controls.DataGridCell  ColumnHeaderGripperStyle  DataGridColumnHeaderStyle1=  7System.Windows.Controls.Primitives.DataGridColumnHeader3  -Microsoft.Windows.Themes.DataGridHeaderBorder+   CanUserSort,   IsClickable- J� IsMouseOver.   	IsHovered/   	IsPressed0   SeparatorBrush1   SeparatorBrush2   SeparatorVisibility3   SeparatorVisibility4   SortDirection5   SortDirection6 n�Name  DataGridRowStyle1)  #System.Windows.Controls.DataGridRow7 �� CornerRadius?	  9System.Windows.Controls.Primitives.SelectiveScrollingGrid?
  9System.Windows.Controls.Primitives.DataGridCellsPresenter8   
ItemsPanelA  ;System.Windows.Controls.Primitives.DataGridDetailsPresenter9   DetailsVisibility$: 	  SelectiveScrollingOrientation;  5System.Windows.Controls.SelectiveScrollingOrientation;   Vertical#<   RowDetailsScrollingConverter:  4System.Windows.Controls.Primitives.DataGridRowHeader
=   Row  gridEditButton  gridDetailButton  gridButtonIcon  buttonCorrow  angleCorrow�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      -fa$http://schemas.fontawesome.io/icons/  5      RlocalHclr-namespace:MaterialDesignThemes.Wpf;assembly=MaterialDesignThemes.Wpf  5      UthemeKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2  5      %v'  &	        &	 �     &	 r    &	 �    7  &	 '    &	 �    &	 �    7  &	 �    7  &		 3    &	
 �    &	 	    &	 i
    &	 �    &	 8    &	 J    7  7  &	 6    &	 �!    &	 �#    7  &	 �$    &	 j%    7  &	 �%    �� 5      "  ��6!   .�5	   
   ��  � ��
 �  ��6'    5
   
   P� 5       �@J�IsMouseOver$
 True��6-   . �5      ��  � ��
 �   �6/   �� 5       � ��$ 	Underline{�64   5      5      �� 5      "  n�6(   .�5   
   ��  � ��
 ���� 6'   �� 5   
    �@�OverridesDefaultStyle$
 True��62   �� 5   
    � ��$ 8q�6$   �� 5   
    �@J�SnapsToDevicePixels$
 True��60   �� 5   
    � �� 5      �� 5      " n�6"   .R�5      �� $ PART_Border��5      # z��5      #��z��5      #	 z	 5      5      5!      5"      �� 5$      6#   �� 5&      8
   "  n�5)   	   .�5*   
   ��  �@�Cursor$ SizeWE��6#   �� 5+   
    � ��$ 0q�6$   �� 5,   
    � ��$ 8��6"   5-      �� 5/      "  ��6   .�50   
   ��  � ��
 ���� 6'   �� 51   
    � �� �#bababa6'   �� 52   
    � ��$ 22(�6%   �� 53   
    � ��$
 12,0q�6#   �� 54   
    � ��$ Center=�6.   �� 55   
    � �� 56      �� 57      " ��6"   .R�58      �� $��0q�6   ._�59      �� $��Center=�6+   $��Center=�6H   5:      5;      5=       5?   
   P� 5@       �@J�IsMouseOver$
 True��6-   . �5A      ��  � �� �#c73e696/   5B      P� 5C       �@J�IsMouseCaptured$
 True��61   . �5D      ��  � �� �#8a2b426/   5E      5G      �� 5I      "    6   .�5J   
   ��  � ��$ 13��6"   �� 5K   
    � ��$ 13��6#   �� 5L   
    � ��$ 0,3,0,0q�6#   �� 5M   
    �@  
Foreground 6'   �� $ 
Foreground� �� *FindAncestor+" ��5N      �� 5P      8
   "  ��5S   	   .�5T   
   ��  � ��$ 18(�6%   5U      �� 5W      8
   "  ��5Z   	   .�5[   
   ��  � �� �#eba5bb6'   5\      �� 5^      "    6   .�5_   
   ��  � ��$ 25��6"   �� 5`   
    � ��$ 25��6#   �� 5a   
    �@  
Foreground 6'   �� $ 
Foreground� �� *FindAncestor+" ��5b      �� 5d      "  ��6   .�5e   
   ��  � �� �#eba5bb6'   �� 5f   
    � ��$ 14(�6%   �� 5g   
    � ��$ 1��6(   �� 5h   
    �@K�ZIndex$ 1��6)   �� 5i   
    � ��$ 10,0,0,0q�6#   �� 5j   
    � ��$ Center=�6.   5k      �� 5m      "  ��6   .�5n   
   ��  � �� �#cd52786'   �� 5o   
    � �� �#eba5bb6'   �� 5p   
    � ��$ 14(�6%   �� 5q   
    � ��$ 1��6(   �� 5r   
    � ��$ 10,0,0,0q�6#   �� 5s   
    � ��
 ���� 6(   �� 5t   
    � ��$ 0q�6,   �� 5u   
    � ��$ Center=�6.   5v      �� 5y      "   6#   .�5z   
   ��  � ��
 ���� 6'   �� 5{   
    � �� �#2225286'   �� 5|   
    � ��$ 0q�6,   �� 5}   
     �@ RowDetailsVisibilityMode$ VisibleWhenSelected=�65   �� 5~   
    � ��$
 true��6:   �� 5   
    �@��PanningMode$
 Both=�65   �� 5�   
    �@��IsFlicksEnabled$ False��63   �� 5�   
    �@ AutoGenerateColumns$ False��60   �� 5�   
    �@ HeadersVisibility$ Column=�6.   �� 5�   
    �@ SelectionMode$ Single=�6*   �� 5�   
    �@ SelectionUnit$ FullRow=�6*   �� 5�   
    �@ CanUserAddRows$ False��6+   �� 5�   
    �@ CanUserDeleteRows$ False��6.   �� 5�   
    �@ CanUserResizeRows$ False��6.   �� 5�   
    �@ CanUserReorderColumns$ False��62   �� 5�   
    � ��$ 13(�6%   �� 5�   
    �@ ColumnWidth$ * 6(   �� 5�   
    �@ GridLinesVisibility$
 None=�60   �� 5�   
    � �� 5�      �� 5�      "  6"   .R�5�      �� # z��5�      #��z��5�      #��z��5�      #��z��5�      $
	 True��5�      ._�5�      �� $ DG_ScrollViewer��6'   $|�false��6@   ��5�      �� 5�   "   " ��62   .R�5�   &   �  5�   *   �� 5�   .   $
��Auto �6?   �� 5�   .   $��* �6?   �� 5�   .   $
��Auto �6?    5�   *   �� 5�   .   $
��Auto �6<   �� 5�   .   $��* �6<   �� 5�   .   $
��Auto �6<   .+�5�   *   �� #��Z 5�   -   $|�false��5�   -   ��5�   -   �� *CellsPanelHorizontalOffset+ �� "  ��5�   -   C� *�� $" DataGridSelectAllButtonStyle��"  +y�5�   -   �� *HeadersVisibility+# Z # Z  �� "    5�   *   $! PART_ColumnHeadersPresenter��5�   -   $��1��5�   -   y�5�   -   �� *HeadersVisibility+# Z # Z  �� "  �� 5�   *   $! PART_ScrollContentPresenter��5�   -   $��1��5�   -   $��2��5�   -   # z��5�   -   �� 5�   *   $ PART_VerticalScrollBar��5�   -   $��1��5�   -   $��2��5�   -   # z 5�   -   $ Vertical=�5�   -   #! z  5�   -   #y�z" 5�   -   # 5�   -   �� *VerticalOffset+$$ OneWay=� �� *TemplatedParent+� 5�   *   $��2��6/   $��1��6<    5�   .   �� 5�   2   ��6C   �� **(NonFrozenColumnsViewportHorizontalOffset+ �� "  �� 5�   2   $��* �6C   .+�5�   .   �� $ PART_HorizontalScrollBar��5�   1   $��1��5�   1   # z% 5�   1   $ 
Horizontal=�5�   1   #! z& 5�   1   #y�z' 5�   1   # 5�   1   �� *HorizontalOffset+$$ OneWay=� �� *TemplatedParent+5�   +   5�   '   5�   #   .��5�      �� #	 z	 6-   5�      5�      5�      5�       5�   
   ]� 5�      ( 5�      �� 5�      ) �@��
IsGrouping$
* true��66   �� 5�      ") �@%�IsVirtualizingWhenGrouping$* false��6X   ./�5�      ��  � ��$ false��6B   5�      5�      �� 5�      "   6'   .�5�   
   ��  � ��
 ���� 6'   �� 5�   
    � ��$ Center=�6.   �� 5�   
    �@�FocusVisualStyle 6-   Z� �� 5�   
    � ��$
 15,0q�6#   �� 5�   
    � �� 5�      �� 5�      "  6"   .R�5�      �� #��z��5�      #��z��5�      $��0q�5�      $
	 True��5�      ._�5�      �� #	 z	 6+   5�      5�      5�      5�      �� 5�      "  n�6-   .�5�   
   ��  � ��$ 8��6"   �� 5�   
    � ��
 ���� 6'   �� 5�   
    �@�Cursor$ SizeWE��6#   �� 5�   
    � �� 5�      �� 5�      " n�6"   .R�5�      �� # z��6   #��z��6A   5�      5�      5�      �� 5�      "   6/   .�5�   
   ��  � ��$ Center=�65   �� 5�   
    � ��
 ���� 6'   �� 5�   
    � �� �#69717d6'   �� 5   
    � ��$ 
15,0,15,10q�6#   �� 5  
    � �� 5     �� 5     "  6"   .R�5     � .+�5       # z��5     #��z��5     #��z��5	     #��z��5
     #, z+ 5     #. z- 5     #/ z��5     #1 z0 5     #3 z2 5     #5 z4 5     ._�5     �� #��z��5  !   #��z��5  !   $
��True��5  !   #	 z	 5  !   5     n� 5     $6 PART_LeftHeaderGripper��5     $
��Left=�5     8��  5     n� 5     $6 PART_RightHeaderGripper��5     $��Right=�5     8�� 5     5     5      5"     5#     �� 5$     "   6&   .�5%  
   ��  � ��
 �����6'   �� 5&  
    � ��$ 0,4,0,0q�6#   �� 5'  
    �@J�SnapsToDevicePixels$
 true��60   �� 5(  
    �@=�ErrorTemplate 65   Z� �� 5)  
    �@ ValidationErrorTemplate 5*     �� 5+     .R�5,     �� $��2,0,0,0q�5-     $��Center=�5.     
���  ��$��!��50     51     53     �� 54  
    � �� 55     �� 56     "  6"   .R�57     �� $ 
DGR_Border��58     $	 0,8q�59     #��z��5:     $��0q�5;     $7 5��5<     $
	 True��5=     ._�5>     	   5?     �� 5@  "   $
��Auto �63   �� 5A  "   $��* �63    5C     �� 5D  "   $��* �60   �� 5E  "   $
��Auto �60   .+�5G     
  $��1��5H  !   #��z8 5I  !   #	 z	 5J  !     5K     $��1��5L  !   $��1��5M  !   #y�z9 5O  !   : 5N  !   �� *AreRowDetailsFrozen+# Z; # Z<  �� "  5O  !     5P     $��2��5Q  !   $: Vertical=�5R  !   y�5S  !   �� *HeadersVisibility+# Z= # Z  �� "  5T     5U     5V     5X      5Z  
   P� 5[      �@J�IsMouseOver$
 True��6-   . �5\     ��  � �� �#623ed06/   �� 5]      � �� �#ffffff6/   5^     P� 5`      �@ 
IsSelected$
 True��6,   . �5a     ��  � �� �#623ed06/   �� 5b      � �� �#ffffff6/   5c     ]� 5e     ( 5f     �� 5g     ) �@ 
IsSelected$
* true��66   �� 5h     ) �@��IsSelectionActive$* false��6F   ./�5k     ��  � �� �#dfdfdf6/   5m     5p     �� 5r     "  ��6#   .�5s  
   ��  � �� �#512da86'   �� 5t  
    � ��
 �����6(   �� 5u  
    � �� �#ffffff6'   �� 5v  
    �@�FocusVisualStyle 6-   Z� �� 5w  
    � ��$ Center=�6.   �� 5x  
    � �� 5y     �� 5z     " ��6"   .R�5{     �� $ 5q�5|     #��z��5}     #��z��5~     $��1q�5     $7 5��5�     ._�5�     �� $��Center=�6+   $��Center=�6H   5�     5�     5�      5�  
   P� 5�      �@J�IsMouseOver$
 True��6-   . �5�     ��  � �� �#673ab76/   5�     5�     �� 5�     8
   "  ��5�  	   .�5�  
   ��  � �� �#d32f2f6'   �� 5�  
    � �� �#b71c1c6(    5�  
   P� 5�      �@J�IsMouseOver$
 True��6-   . �5�     ��  � �� �#f443366/   5�     5�     �� 5�     "    6#   .�5�  
   ��  � ��$ 12��6"   �� 5�  
    � ��$ 12��6#   �� 5�  
    � ��$ Center=�6.   5�     �� 5�     8
   "  ��5�  	   .�5�  
   ��  � ��
 �����6'   5�     �� 5�     "    6    .�5�  
   ��  � ��$ 25��6"   �� 5�  
    � ��$ 25��6#   �� 5�  
    �@  
Foreground 6'   �� $ 
Foreground� �� *FindAncestor+" ��5�     5�     