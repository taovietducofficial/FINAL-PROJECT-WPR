   M S B A M L   `   `   `  ����R  NEnglishCentreManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullg8clr-namespace:EnglishCentreManagement.UserControlProject*EnglishCentreManagement.UserControlProject  5      g8clr-namespace:EnglishCentreManagement.UserControlProject*EnglishCentreManagement.UserControlProject  5	      B    <EnglishCentreManagement.UserControlProject.UserInformationUC   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jlocal8clr-namespace:EnglishCentreManagement.UserControlProject     5      _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      Auc8clr-namespace:EnglishCentreManagement.UserControlProject  5	      -   5        $��UserInformation��5
      $	��998��5      $	��588��5      
������    MaterialDesignFont#���   5      $��13(�5      $��Regular"�5        MaterialDesignBody#���  5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5      .��5      �� $��0��5   	    �� Padding$ 5q�5   	   
�������$��1q�5   	    �� CornerRadius$ 10��5   	   ._�5   
   �  � ColumnDefinitions 5      �� 5      $	��400 �6#   �� 5      $��1* �6#   �� 5       $��1* �6#   .+�5#      �� $��0��5$      $��10q�5%      $��Center=�5&      $��Center=�5'       J� Opacity$	 1.2Q�5(      .+�5*      �� $	��200��5+      $	��200��5,      $ 3q�5-      $��Center=�5.      $��Center=�5/      
������ $	 100��51      $	��Top=�52      ._�54      A� $��10q�6    J� Effect 55      3  -System.Windows.Media.Effects.DropShadowEffect  56         
BlurRadius$ 15Q�57   !      	Direction$	 295Q�58   !   	   Opacity$		 0.4Q�59   !   
   ShadowDepth$
 10Q�5:   !   ��5=      �� 5>       �� ImageSource$&  /ResourceXAML/Image/UserIcon.png��6)   5A      5B      �� 5D      $��0��5E      $��Center=�5F      $��Center=�5G      $��20(�5H      $
��Bold"�5I        TextBlockStyle#��[ 5J      ��5K      �� *CrtUser.NamePerson+�� 5M      $��1��5N      $��Center=�5O      $��Center=�5P      $��15(�5Q      $ 0.704Q�5R      #��[ 5S      ��5T      �� *CrtUser.Address+�� 5V      $��10q�5W      $
��Left=�5X      $	��Top=�5Y      y�5Z      �� *IsSalaryVisible+.+�5[      �� $��Salary��6     
LableStyle#��[ 6-   �� 5]      $	��200��5^      $��50��5_      $	��Top=�5`       �� AcceptsReturn$
 True��5a       �� 
IsReadOnly$
 True��5c       ! MaterialDesignOutlinedTextBox#��[ 5d       �� TextWrapping$
 Wrap=�5f      " �� VerticalScrollBarVisibility$
 Auto=�5g      {�5b      ��  �� Path$ 	IsChecked� �� ElementName$2 ,MaterialDesignOutlinedTextBoxEnabledComboBox����5e      �� *Salary+5g      5h      5j      � 5l      $��1��5m      $��10q�5n      $��Center=�5o      $��Center=�5p      $	 1.2Q�5q      .+�5r      �� $��Center=�6   $��Center=�6:   .+�5u      �� $��10q�5v      $
��Left=�5w      $	��Top=�5x      .+�5y      �� $
��Name��6    #��[ 6/   �� 5{      $	��200��5|      $��50��5}      $	��Top=�5~      $
 True��5      $
 True��5�      #��[ 5�      $
 Wrap=�5�      $
 Auto=�5�      {�5�      �� $ 	IsChecked�$2 ,MaterialDesignOutlinedTextBoxEnabledComboBox����5�      �� *CrtUser.NamePerson+5�      5�      �� 5�      $��10q�5�      $
��Left=�5�      $	��Top=�5�      .+�5�      �� $��Email��6    #��[ 60   �� 5�      $	��200��5�      $��50��5�      $	��Top=�5�      $
 True��5�      #��[ 5�      $
 Wrap=�5�      $
 Auto=�5�      {�5�      �� $ 	IsChecked�$2 ,MaterialDesignOutlinedTextBoxEnabledComboBox����5�      �� *CrtUser.Enter_Infor.Email+5�      5�      �� 5�      $��10q�5�      $
��Left=�5�      $	��Top=�5�      .+�5�      �� $��Location��6    #��[ 63   �� 5�      $	��200��5�      $��50��5�      $	��Top=�5�      $
 True��5�      #��[ 5�      $
 Wrap=�5�      $
 Auto=�5�      {�5�      �� $ 	IsChecked�$2 ,MaterialDesignOutlinedTextBoxEnabledComboBox����5�      �� *CrtUser.Address+5�      5�      5�      5�      � 5�      $��2��5�      $��10q�5�      $��Center=�5�      $��Center=�5�      $	 1.2Q�5�      .+�5�      �� $��Center=�6   $��Center=�6:   .+�5�      �� $��10q�5�      $
��Left=�5�      $	��Top=�5�      .+�5�      �� $��Gender��6    #��[ 61   �� 5�      $	��200��5�      $��50��5�      $	��Top=�5�      $
 True��5�      #��[ 5�      $
 Wrap=�5�      $
 Auto=�5�      {�5�      �� $ 	IsChecked�$2 ,MaterialDesignOutlinedTextBoxEnabledComboBox����5�      �� *CrtUser.Gender+5�      5�      �� 5�      $��10q�5�      $
��Left=�5�      $	��Top=�5�      .+�5�      �� $��Phone number��6    #��[ 67   �� 5�      $	��200��5�      $��50��5�      $	��Top=�5�      $
 True��5�      #��[ 5�      $
 Wrap=�5�      $
 Auto=�5�      {�5�      �� $ 	IsChecked�$2 ,MaterialDesignOutlinedTextBoxEnabledComboBox����5�      �� *CrtUser.PhoneNum+5�      5�      �� 5�      $��10q�5�      $
��Left=�5�      $	��Top=�5�      .+�5�      �� $��
Rank Level��6    #��[ 65   �� 5�      $	��200��5�      $��50��5�      $	��Top=�5�      $
 True��5�      $
 True��5�      #��[ 5�      $
 Wrap=�5�      $
 Auto=�5�      {�5�      �� $ 	IsChecked�$2 ,MaterialDesignOutlinedTextBoxEnabledComboBox����5�      �� *CrtUser.RankLevel+5�      5�      5�      5�      5�      5�      5�      