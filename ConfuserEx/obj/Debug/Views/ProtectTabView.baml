   M S B A M L   `   `   `  ����O  KConfuser, Version=2.5.1.0, Culture=neutral, PublicKeyToken=5fbc98a9d8494c64'clr-namespace:ConfuserEx
ConfuserEx  5      ;"clr-namespace:ConfuserEx.ViewModelConfuserEx.ViewModel  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� DataType'   !ConfuserEx.ViewModel.ProtectTabVM � RowDefinitions � ColumnDefinitions �Name � Minimum � Maximum � Value ��Name �� 
IsReadOnly	 �� IsReadOnlyCaretVisible"
 �� VerticalScrollBarVisibility   ConfuserEx.Skin   RTBDocument �� Triggers �� Binding �� Value �� 
TargetName �� Property �� Value�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      "localclr-namespace:ConfuserEx  5      )vm"clr-namespace:ConfuserEx.ViewModel  5      %�  (��       5      *,  +)�� 6   "    6   .R�5   
   � 
������  5      �� 5      $
��40px �6    �� 5	      $��* �6     5      �� 5      $��* �6#   �� 5      $��100px �6#   �� 5      $��100px �6#   .+�5      � $ progress��6   $��0��6,   $��0��69   $��5q�6I   $ 0Q�5   5   $ 1Q�6A    6   �� *
Progress+6A   �� 5      $��0��6   $��1��6"   $��5q�62   $��Protect!��6=   ��6P   �� *
ProtectCmd+�� 5      $��0��6   $��2��6"   $��5q�62   $��Cancel��6=   ��6N   �� *	CancelCmd+�� 5      $	 log��6   $��1��6'   $��3��64   $��5q�6H   $��Consolas)�6S    . 	 . $
 Visible=�5       5   J   �� *LogDocument+5      5       5   
   �� 5       6   �� *
Progress+ 67   Z� .a�5      �� $ progress��6    �@�IsIndeterminate . 6J   5      �� 5      $
 True��65    6   �� *Result+.a�5      �� $	 log��6    � �� �#40ff406A   5      �� 5       $ False��65    6   �� *Result+.a�5!      �� $	 log��6    � �� �#ff40406A   5"      5$      5%      