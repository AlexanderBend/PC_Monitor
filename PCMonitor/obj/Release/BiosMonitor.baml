   M S B A M L   `   `   `  ���� D  @PCMonitor, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:PCMonitor	PCMonitor      PCMonitor.BiosMonitor   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     )localclr-namespace:PCMonitor     U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  -     >�Name$  userControl�� � 	Resources    Storyboard1 �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value��%�  &	        �� .��U� $ (UIElement.Opacity)�$ 	packIcon2��.\�  $ 0��$ 0Q�  $ 0:0:0.3��$	 0.6Q�  $ 0:0:0.5��$	 0.6Q�  $ 0:0:1.3��$ 1Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�$ 	packIcon2��.\�  $ 0��$ 0Q�  $ 0:0:0.3��$ 67.242Q�  $ 0:0:0.5��$ 90.578Q�  $ 0:0:1.3��$ 180.042Q� � Triggers :�  :� RoutedEvent$ FrameworkElement.Loaded��.[��� #��[  .��?  9MaterialDesignThemes.Wpf.Transitions.TransitioningContent  -     Name$ TrainsitionigContentSlide��$��2��C  =MaterialDesignThemes.Wpf.Transitions.TransitioningContentBase	   OpeningEffect	 D  >MaterialDesignThemes.Wpf.Transitions.TransitionEffectExtension  *SlideInFromLeft+
   Duration$
 0:0:0.8X�.��� .+��� $#��Конфигурация BIOS�� �� TextAlignment$
 Left=�$��Center=�$��0,10,470,414q�
�������$��18(�$��26���� -    ��Name$ BIOSConfiguration��$
��Left=�$	��214��$	��Top=�$	��453��
�������$��0,36,0,0q��� $/��)Конфигурация загрузки��$
 Left=�$��Center=�$��0,255,470,169q�
�������$��18(�$��26���� -   $ BootConfiguration��$
��Left=�$	��175��$	��Top=�$	��453��
�������$��0,292,0,-17q��� -    ��Name$ 	textBlock��$��Кулер CPU��$
 Left=�$��Center=�$��466,-11,4,435q�
�������$��18(�$��26�� J� RenderTransformOrigin$ 0.5,0.5&� J� Opacity$ 0.995Q�z�V� .~��� �� �� T� �� -   $ FanConfiguration��$
��Left=�$	��404��$	��Top=�$	��320��
�������$��
466,25,0,0q�$ 0.5,0.5&�$ 0.995Q�z�V� .~��� �� �� T� �� $'��!Скорость кулера CPU��$
 Left=�$��Center=�$��537,292,78,132q�
�������$��18(�$��26���� -   $ CpuFansSpeed��$��	For Admin��$
 Left=�$��Center=�$��573,333,99,91q�
�������$��20(�$��26��$
��Bold"�'  !MaterialDesignThemes.Wpf.PackIcon  -     Name$ 	packIcon2��   Kind$	 Fan=�$	��106��$	��106��$��Center=�$��573,175,0,169q�
�������$ 0.5,0.5&�z�V� .~��� �� �� T� 