   M S B A M L   `   `   `  ����D  @PCMonitor, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:PCMonitor	PCMonitor  5   	       PCMonitor.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:PCMonitor     5   	   U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   $	��600��5      $
��1150��6'     � WindowStyle$
  None=�64    � WindowStartupLocation$ CenterScreen=�6G    � 
ResizeMode$ NoResize=�6l   .��5	      � -   5        ���#22272b.+�5
   
   �� .+�5      � ���	#FF361763$��10��6*   � 5      $��5q�6   .+�5      ��  �� Orientation$ 
Horizontal=�6   $��Right=�66   .+�5      '  !MaterialDesignThemes.Wpf.PopupBox  $��Center=�6.   
�������   PopupContent. 5      �� $	��150��6%   $��Center=�61   $��Center=�6L   .+�5      �� -   5        $��Помощь��5   %   66   5      5      �� 5      -   5         ��Name$ ButtonClose��5      $��40��62   $��40��6=   $��0q�6v   ��6I   Z� ��6_   Z� .��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Power=�62   5      5      5      5      � 5   
   $��283,65,10,10q�6   .+�5      � -   5         �Name$ GridPrincipal��5      $��Center=�6*   $��Center=�6G   5      � 5   
   $	��278��6   $
��Left=�6   ���	#FF222222.+�5       ?  9MaterialDesignThemes.Wpf.Transitions.TransitioningContent  -   5          Name$ TrainsitionigContentSlide��5    2   $��0,0,0,68q�6�   $	��532��6�   $��Bottom=�6�   C  =MaterialDesignThemes.Wpf.Transitions.TransitioningContentBase	   OpeningEffect	 6U   D  >MaterialDesignThemes.Wpf.Transitions.TransitionEffectExtension  *SlideInFromLeft+
   Duration$
 0:0:0.2X�.��5!      � -   5        $ 
GridCursor��5!      $��	0,110,0,0q�6+   ���	#FF673AB7$��10��6U   $
��Left=�6`   $��60��6{   $	��Top=�6�   5"      �� 5#      -   5         ��Name$ ListViewMenu��5#      $��
0,100,0,88q�6-   
�������$��Champagne & Limousines)�6X   $��18(�6�    �� SelectedIndex$ 0��6�   .@�5$      �� $��60��6   .��5%      �� $ 
Horizontal=�6!   .+�5&        $ LaptopChromebook=�62   $��30��6J   $��30��6U   $��Center=�6a   $��5q�6|   
�������6�   �� 5'      $��Конфигурация��6$   $��17(�68   $��Center=�6F   $
��20 0q�6a   
�������6o   5(      5)      �� 5*      $��60��6   .��5+      �� $ 
Horizontal=�6!   .+�5,        $ Speedometer=�62   $��30��6E   $��30��6P   $��Center=�6\   $��5q�6w   
�������6�   �� 5-      $-��'Интеренет соединение��6$   $��17(�6@   $��Center=�6N   $
��20 0q�6i   
�������6w   5.      5/      �� 50      $��60��6   .��51      �� $ 
Horizontal=�6!   .+�52        $ Resistor=�62   $��30��6B   $��30��6M   $��Center=�6Y   $��5q�6t   
�������6   �� 53      $+��%Мониторинг ресурсов��6$   $��17(�6?   $��Center=�6M   $
��20 0q�6h   
�������6v   54      55      �� 56      $��60��6   .��57      �� $ 
Horizontal=�6!   .+�58        $ ApacheKafka=�62   $��30��6E   $��30��6P   $��Center=�6\   $��5q�6w   
�������6�   �� 59      $
��BIOS��6$   $��17(�60   $��Center=�6>   $
��20 0q�6Y   
�������6g   5:      5;      �� 5<      $��60��6   .��5=      �� $ 
Horizontal=�6!   .+�5>        $	 Hdd=�62   $��30��6=   $��30��6H   $��Center=�6T   $��5q�6o   
�������6z   �� 5?      $��
Диски��6$   $��17(�61   $��Center=�6?   $
��20 0q�6Z   
�������6h   5@      5A      5B      5C      5E      5F      