   M S B A M L   `   `   `  ����D  @PCMonitor, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:PCMonitor	PCMonitor  5      "    PCMonitor.InternetConnection   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      )localclr-namespace:PCMonitor     5      U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5        � 	Resources  5
         OnClick1 �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value��%�  &	        �� 5   
   .��5      U� $ (UIElement.Opacity)�6,   $ ConnectionSpeed��6\   .\�5        $ 0��6'   $ 0Q�63     5      $ 0:0:0.5��6'   $ 1Q�69   5      U� 5      $ (UIElement.Opacity)�6,   $ MoreInfo��6\   .\�5        $ 0��6'   $ 0Q�63     5      $ 0:0:0.5��6'   $ 1Q�69   5      U� 5      $ (UIElement.Opacity)�6,   $ PingMs��6\   .\�5        $ 0��6'   $ 0Q�63     5      $ 0:0:0.5��6'   $ 1Q�69   5      U� 5      $ (UIElement.Opacity)�6,   $ 
ServerName��6\   .\�5        $ 0��6'   $ 0Q�63     5      $ 0:0:0.5��6'   $ 1Q�69   5      5      5       � Triggers 5      :� 5   
    :� RoutedEvent$ ButtonBase.Click��6    :� 
SourceName$ button��66   .[�5       �� #��[  6   5!      .��5#      ?  9MaterialDesignThemes.Wpf.Transitions.TransitioningContent  -   5          Name$ TrainsitionigContentSlide��5#   *   $��2��6�   C  =MaterialDesignThemes.Wpf.Transitions.TransitioningContentBase	   OpeningEffect	 6M   D  >MaterialDesignThemes.Wpf.Transitions.TransitionEffectExtension  *SlideInFromLeft+
   Duration$
 0:0:0.8X�.��5$   
   � .+�5%      �� -   5         ��Name$ MoreInfo��5%      $��10,399,551,10q�6*   $�� ��6A   
�������$��14(�6]    J� RenderTransformOrigin$ 0.5,0.5&�6k   z�5&      V� 5'      .~�5(      �� �� 5)      �� 5*      T� 5+      5,      5.      �� 50      -   5        $ ConnectionSpeed��50      $��Нажмите Start��61    �� TextAlignment$ Center=�6F   $��Center=�6]   $��56,60,0,226q�6x   
�������$��72(�6�   $	��214��6�   $
��Bold"�6�   $
��Left=�6�   $	��675��6�   $ 0.5,0.5&�6�   z�51      V� 52      .~�53      �� �� 54      �� 55      T� 56      57      59      �� 5:      -   5        $ PingMs��5:      $��123,279,425,172q�6(   $��
Пинг: ��6A   
�������$��22(�6c   $
��Bold"�6q   �� 5;      -   5        $ 
ServerName��5;      $��465,279,10,172q�6,   $��Cервер: ��6D   
�������$��22(�6h   $
��Bold"�6v   �� 5<      -   5         ��Name$ button��5<      $��START��6%   ���	#FF4E1D70
�������$��223,355,247,113q�6a   6z   �� 5=      -   5         ��Name$ 
UserServer��5=      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$( "Введите ваш сервер��6*    % !MaterialDesignFloatingHintTextBox#��[ 6^   $��Center=�6�   $��460,453,10,10q�6�   
������� �� SelectionBrush
 ����� �� 
CaretBrush
 �����6�   5>      5?      5D      