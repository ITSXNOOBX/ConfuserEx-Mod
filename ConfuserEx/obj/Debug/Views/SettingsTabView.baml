   M S B A M L   `   `   `  ����O  KConfuser, Version=2.5.1.0, Culture=neutral, PublicKeyToken=5fbc98a9d8494c64'clr-namespace:ConfuserEx
ConfuserEx  5      ;"clr-namespace:ConfuserEx.ViewModelConfuserEx.ViewModel  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� DataType(   "ConfuserEx.ViewModel.SettingsTabVM � 	Resources#  ConfuserEx.ComponentConverter   Key 
 Shared   
Components � RowDefinitions � ColumnDefinitions �� Orientation d� 	IsChecked   ConfuserEx.CompComboBox   
Components   SelectedComponent  PackerConverter	 �� 	Converter
 �� Mode �� SelectedItem �� Path �� Source �� SelectedIndex ��Name �� Triggers �� Binding �� Value �� 
TargetName �� Property �� Value  FontAwesome&   System.Windows.Media.TextOptions   TextRenderingMode�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      "localclr-namespace:ConfuserEx  5      )vm"clr-namespace:ConfuserEx.ViewModel  5      %�	  (��       5      *,  +)7  �� 6   "    6   .R�5   
   � 
������  5      ��  5      PackerConverter  	False  5	   +   �� *App.Project.Packers+5
       5      �� 5      $
��40px �6    �� 5      $
��40px �6    �� 5      $��* �6     5      �� 5      $��200px �6#   �� 5      $��* �6#   �� 5      $
��36px �6#   .+�5      �� $��0��6   $��3��6&   $ 
Horizontal=�6:   $��5q�6S   .+�5      �� $��	Packer : ��6   $��Center=�6/   $��Right=�6J   $��5,0,0,0q�5       6,   �� *	HasPacker+  5      $	��300��6%   $��5,0,0,0q�6\   $
��Left=�5   E   $��Center=�5   %    5   1   �� *App.Project.Packers+{�5   %   �� *	HasPacker+ 5   %   �� *App.Project.Packer.Id+8	   $
 TwoWay=�5      �� 5       $��1��6   $��0��6!   $��
Modules : ��61   $��Bottom=�6F   $
��Left=�5!      $��5,0,0,0q�6/   �� 5"      $��1��6   $��1��6!   $��Rules : ��61   $��Bottom=�6D   $
��Left=�5#      $��5,0,0,0q�6/   �� 5%      $��2��6   $��0��6#   $��5q�63   ��6>   �� *ModulesView+ 5&      �� *SelectedList+$
 OneWayToSource=���5'      �� 5(      .R�5)      �� ��5*      � 5+   "   .&�5,   &   �� $ 
SimpleName�6.   �� 5-   &   $ <Global settings>��6.   5.   #   50      51      53      �� 54      $��2��6   $��1��6#   $��5q�63   $��Consolas)�6>   ��55      �� *SelectedList.Rules+ 56      �� *SelectedRuleIndex+$
 TwoWay=���57      �� 58      .R�59      �� $	 txt��6$   ��61   �� *	Pattern+ 5:      �� 5;       6*   �� *
Expression+ 6I   Z� .a�5<   "   �� $	 txt��6)    � ��
 �  ��6P   5=      5?      5A      ]� 5C      $��2��6   $��2��6%   ��.  .+�5D      �� $��26��6   $��5q�6%   $	��Top=�60   ��6E   �� *Add+.��5E      �� $
��14px(�6    #���  60   $	����6[   $
��12px��6k   $ 	GrayScale=�5F       5G      �� 5H      $��26��6   $��5q�6%   $	��Top=�60   ��6E   �� *Remove+.��5I      �� $
��14px(�6    #���  60   $	����6[   $
��12px��6k   $ 	GrayScale=�5J       5K      �� 5L      $��26��6   $��5q�6%   $	��Top=�60   ��6E   �� *Edit+.��5M      �� $
��14px(�6    #���  60   $	����6[   $
��12px��6k   $ 	GrayScale=�5N       5O      5P      5Q      5R      5S      