   M S B A M L   `   `   `  ����D  @PCMonitor, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:PCMonitor	PCMonitor  5          PCMonitor.BiosMonitor   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      )localclr-namespace:PCMonitor     5      U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      -   5          >�Name$  userControl��5       � 	Resources 5
         Storyboard1 �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value��%u  &	        �� 5   
   .��5      U� $ (UIElement.Opacity)�6,   $ 	packIcon2��6\   .\�5        $ 0��6'   $ 0Q�63     5      $ 0:0:0.3��6'   $	 0.6Q�69     5      $ 0:0:0.5��6'   $	 0.6Q�69     5      $ 0:0:1.3��6'   $ 1Q�69   5      U� 5      $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6,   $ 	packIcon2��6�   .\�5        $ 0��6'   $ 0Q�63     5      $ 0:0:0.3��6'   $ 67.242Q�69     5      $ 0:0:0.5��6'   $ 90.578Q�69     5      $ 0:0:1.3��6'   $ 180.042Q�69   5      5      5       � Triggers 5      :� 5   
    :� RoutedEvent$ FrameworkElement.Loaded��6   .[�5      �� #��[  6   5      .��5      ?  9MaterialDesignThemes.Wpf.Transitions.TransitioningContent  -   5          Name$ TrainsitionigContentSlide��5   *   $��2��6�   C  =MaterialDesignThemes.Wpf.Transitions.TransitioningContentBase	   OpeningEffect	 6M   D  >MaterialDesignThemes.Wpf.Transitions.TransitionEffectExtension  *SlideInFromLeft+
   Duration$
 0:0:0.8X�.��5    
   � .+�5!      �� $#��Конфигурация BIOS��6    �� TextAlignment$
 Left=�61   $��Center=�6F   $��0,10,470,414q�6a   
�������$��18(�6�   $��26��6�   �� 5"      -   5         ��Name$ BIOSConfiguration��5"      $
��Left=�62   $	��214��6M   $	��Top=�6[   $	��453��6s   
�������$��0,36,0,0q�6�   �� 5#      $/��)Конфигурация загрузки��6   $
 Left=�65   $��Center=�6J   $��0,255,470,169q�6e   
�������$��18(�6�   $��26��6�   �� 5$      -   5        $ BootConfiguration��5$      $
��Left=�62   $	��175��6M   $	��Top=�6[   $	��453��6s   
�������$��0,292,0,-17q�6�   �� 5&      -   5         ��Name$ 	textBlock��5&      $��Кулер CPU��6+   $
 Left=�6<   $��Center=�6Q   $��466,-11,4,435q�6l   
�������$��18(�6�   $��26��6�    J� RenderTransformOrigin$ 0.5,0.5&�6�    J� Opacity$ 0.995Q�6�   z�5'      V� 5(      .~�5)      �� �� 5*      �� 5+      T� 5,      5-      5/      �� 50      -   5        $ FanConfiguration��50      $
��Left=�61   $	��404��6L   $	��Top=�6Z   $	��320��6r   
�������$��
466,25,0,0q�6�   $ 0.5,0.5&�6�   $ 0.995Q�6�   z�51      V� 52      .~�53      �� �� 54      �� 55      T� 56      57      59      �� 5:      $'��!Скорость кулера CPU��6   $
 Left=�63   $��Center=�6H   $��537,292,78,132q�6c   
�������$��18(�6�   $��26��6�   �� 5;      -   5        $ CpuFansSpeed��5;      $��	For Admin��6.   $
 Left=�6?   $��Center=�6T   $��573,333,99,91q�6o   
�������$��20(�6�   $��26��6�   $
��Bold"�6�   '  !MaterialDesignThemes.Wpf.PackIcon  5<      -   5          Name$ 	packIcon2��5<   &      Kind$	 Fan=�69   $	��106��6D   $	��106��6P   $��Center=�6]   $��573,175,0,169q�6x   
�������$ 0.5,0.5&�6�   z�5=      V� 5>      .~�5?      �� �� 5@      �� 5A      T� 5B      5C      5E      5F      5G      5H      