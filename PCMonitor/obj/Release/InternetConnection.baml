   M S B A M L   `   `   `  ���� D  @PCMonitor, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:PCMonitor	PCMonitor  "    PCMonitor.InternetConnection   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     )localclr-namespace:PCMonitor     U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes    � 	Resources     OnClick1 �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value��%�  &	        �� .��U� $ (UIElement.Opacity)�$ ConnectionSpeed��.\�  $ 0��$ 0Q�  $ 0:0:0.5��$ 1Q�U� $ (UIElement.Opacity)�$ MoreInfo��.\�  $ 0��$ 0Q�  $ 0:0:0.5��$ 1Q�U� $ (UIElement.Opacity)�$ PingMs��.\�  $ 0��$ 0Q�  $ 0:0:0.5��$ 1Q�U� $ (UIElement.Opacity)�$ 
ServerName��.\�  $ 0��$ 0Q�  $ 0:0:0.5��$ 1Q� � Triggers :�  :� RoutedEvent$ ButtonBase.Click�� :� 
SourceName$ button��.[��� #��[  .��?  9MaterialDesignThemes.Wpf.Transitions.TransitioningContent  -     Name$ TrainsitionigContentSlide��$��2��C  =MaterialDesignThemes.Wpf.Transitions.TransitioningContentBase	   OpeningEffect	 D  >MaterialDesignThemes.Wpf.Transitions.TransitionEffectExtension  *SlideInFromLeft+
   Duration$
 0:0:0.8X�.��� .+��� -    ��Name$ MoreInfo��$��10,399,551,10q�$�� ��
�������$��14(� J� RenderTransformOrigin$ 0.5,0.5&�z�V� .~��� �� �� T� �� -   $ ConnectionSpeed��$��Нажмите Start�� �� TextAlignment$ Center=�$��Center=�$��56,60,0,226q�
�������$��72(�$	��214��$
��Bold"�$
��Left=�$	��675��$ 0.5,0.5&�z�V� .~��� �� �� T� �� -   $ PingMs��$��123,279,425,172q�$��
Пинг: ��
�������$��22(�$
��Bold"��� -   $ 
ServerName��$��465,279,10,172q�$��Cервер: ��
�������$��22(�$
��Bold"��� -    ��Name$ button��$��START�����	#FF4E1D70
�������$��223,355,247,113q��� -    ��Name$ 
UserServer��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$( "Введите ваш сервер�� % !MaterialDesignFloatingHintTextBox#��[ $��Center=�$��460,453,10,10q�
������� �� SelectionBrush
 ����� �� 
CaretBrush
 �����