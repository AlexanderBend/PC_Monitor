   M S B A M L   `   `   `  ���� D  @PCMonitor, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:PCMonitor	PCMonitor      PCMonitor.ConfigMonitor   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     )localclr-namespace:PCMonitor     U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  $��487.5��  � 	Resources     OnClick1 �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value��%�	  &	        �� .��U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�$
 grid��.\�  $ 0��$	 233Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$
 grid��.\�  $ 0��$ -121.5Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$
 grid��.\�  $ 0��$ 0.739Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�$
 grid��.\�  $ 0��$ 0.744Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$ grid1��.\�  $ 0��$ -185.962Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�$ grid1��.\�  $ 0��$ 232.506Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$ grid1��.\�  $ 0��$ 0.808Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�$ grid1��.\�  $ 0��$ 0.808Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$ grid2��.\�  $ 0��$ 0.783Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�$ grid2��.\�  $ 0��$ 0.783Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$ grid2��.\�  $ 0��$	 288Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�$ grid2��.\�  $ 0��$ 66.458Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�$	 RAM��.\�  $ 0��$ 0.782Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�$	 RAM��.\�  $ 0��$ -24.5Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�$ CPUinfo��.\�  $ 0��$ 0.795Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�$ CPUinfo��.\�  $ 0��$	 -22Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�$ GPUinfo��.\�  $ 0��$ 0.815Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�$ GPUinfo��.\�  $ 0��$ -87.5Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$ GPUinfo��.\�  $ 0��$ 7Q�.��?  9MaterialDesignThemes.Wpf.Transitions.TransitioningContent  -     Name$ TrainsitionigContentSlide��$��2��C  =MaterialDesignThemes.Wpf.Transitions.TransitioningContentBase   OpeningEffect D  >MaterialDesignThemes.Wpf.Transitions.TransitionEffectExtension  *SlideInFromLeft+   Duration$ 0:0:0.8X�.��� -    �Name$ AdminConfiguration��$��Center=�$��0,0,10,0q�$	��790��	 J� RenderTransformOrigin$	 0.5,0.5&�z�V� .~��� �� �� T� .+��� -   
 ��Name$
 CPUinfo��$
��Left=�$	��215��$	��Top=�$	��382��
�������$��	33,10,0,0q�$	 0.5,0.5&�z�V� .~��� �� �� T� .@��� $��Данные CPU��$	��138��$��12(�$
��Bold"��� -   $
 GPUinfo��$
��Left=�$	��178��$	��Top=�$	��382��
�������$��
33,230,0,0q�$	 0.5,0.5&�z�V� .~��� �� �� T� .@��� $��Данные GPU��$	��138��$��12(�$
��Bold"��� -   $	
 RAM��$
��Left=�$	��408��$	��Top=�$	��336��
�������$��	420,0,0,0q�$	 0.5,0.5&�z�V� .~��� �� �� T� .@��� $��Данные RAM��$	��138��$��12(�$
��Bold"�� -   $ PCIndicators��$��10,403,-10,0q�$	 0.5,0.5&�z�V� .~��� �� �� T� .+�� $��
45,6,560,0q�$	 0.5,0.5&�.+�'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ SpeedometerMedium=�$��56��$��62��$	��Top=�$
��Left=�
�������$��0,10,0,0q��� $��Нагрузка CPU��$��Center=�$��	61,0,1,38q�
�������$��18(�$	 0.5,0.5&�$��32��$
��Bold"��� -    ��Name$ CPULoad��$�� ��$��Center=�$��	61,34,1,3q�
�������$��22(�$	 0.5,0.5&�$��33��$
��Bold"�� $��279,10,287,10q�$	 0.5,0.5&�.+�  $ CoolantTemperature=�$��56��$��54��$	��Top=�$
��Left=�
�������$��0,10,0,0q��� $ ��Температура CPU��$��Center=�$��	69,0,0,40q�
�������$��18(�$	 0.5,0.5&�$��30��$
��Bold"��� -   $ CPUTemperature��$�� ��$��Center=�$��	69,30,1,3q�
�������$��22(�$	 0.5,0.5&�$��37��$
��Bold"�� $��540,10,28,10q�$	 0.5,0.5&�.+�  $ CropFree=�$��56��$��57��$	��Top=�$
��Left=�
�������$��0,10,0,0q��� $��Cокет CPU��$��Center=�$��	69,0,0,40q�
�������$��18(�$	 0.5,0.5&�$��30��$
��Bold"��� -	   $ CPUSoket��$�� ��$��Center=�$��	69,30,1,3q�
�������$��22(�$	 0.5,0.5&�$��37��$
��Bold"�