   M S B A M L   `   `   `  ����C  ?EngWords, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:EngWordsEngWords  5   	       EngWords.Views.MainView   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:EngWords     5   	   S OPrism.Wpf, Version=7.2.0.1422, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59Y UPrism.Unity.Wpf, Version=7.2.0.1422, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59&prismhttp://prismlibrary.com/   5   	   U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	   c	 _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity 	 5
   	   h
 dMicrosoft.Expression.Interactions, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bei9http://schemas.microsoft.com/expression/2010/interactions 
 5   	   !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel$
  True��5   	   $��Regular"�5   	   $��14(�5   	    � Title$ 
MainWindow��5   	   $	��600��6   $	��900��6)    � 
ResizeMode$ 	CanResize=�65    � Icon$ /En.ico��6L    � 	Resources 5         PrimaryHueLightBrush �� Color " PrimaryHueLightForegroundBrush  PrimaryHueMidBrush   PrimaryHueMidForegroundBrush  PrimaryHueDarkBrush ! PrimaryHueDarkForegroundBrush  OpenMenu �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime	 O� Value
 R� KeyTime  System.Windows.Visibility   Hidden R� Value   Visible  	CloseMenu��%
  &	        &	 !     &	 @     &	 a     &	 �     &	 �     &	 �     &	 C    �� 5   
   $ #3282b8��67   �� 5   
   $ White��6A   �� 5   
   $ #3282b8��65   �� 5   
   $ White��6?   �� 5   
   $ #0f4c75��66   �� 5   
   $ White��6@   �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��5   ,   .\�5        $ 0:0:0.2��6'   $	 0Q�69     5      $ 0:0:0.4��6'   $		 200Q�69   5      T� 5      $ (UIElement.Visibility)�6-   $ ButtonCloseMenu��5   -   ..�5       i� $
 0:0:0.2��6)   # Z 6;   i� 5!      $
 0:0:0.2��6)   # Z 6;   5"      5#      �� 5%   
   .��5&      U� $ (FrameworkElement.Width)�6,   $ GridMenu��5'   ,   .\�5(        $ 0��6'   $		 200Q�63     5)      $ 0:0:0.2��6'   $	 0Q�69   5*      T� 5+      $ (UIElement.Visibility)�6-   $ ButtonCloseMenu��5,   -   ..�5-      i� $
 0��6)   # Z 65   i� 5.      $
 0:0:0.3��6)   # Z 6;   5/      50      52       � Triggers 53      :� 54   
    :� RoutedEvent$ ButtonBase.Click��6    :� 
SourceName$ ButtonOpenMenu��66   .[�55      �� #��[ 6   56      :� 57   
   $ ButtonBase.Click��6   $ ButtonCloseMenu��66   .[�58      �� #��[ 6   59      :� 5:   
   $ ButtonBase.Click��6   $ OpenList��66   .[�5;      �� #��[ 6   5<      .��5>      � ���#1b262c.+�5A   
   � -   5         �Name$ listG��5A       � RowDefinitions 5B      �� 5C      $��40 �6    �� 5D      $	��200 �6    �� 5E      $	��200 �6    .+�5H      ��  �� Orientation$ 
Horizontal=�6   .+�5I      �� -   5         ��Name$ ButtonOpenMenu��5I      $��30��61   $��30��6=   $��5q�6H   $��Right=�5J      $	��Top=�65    0 ,MaterialDesignFloatingActionMiniAccentButton#��[ 5K      ���#3282b8$��0q�5M       � Cursor$
 Hand��6%   ��5L      Z� ��6/   Z� .��5N      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$
 Menu=�6.   $��25��6:   $��25��6E   5O      5P      �� 5R      $��0,0,0,0q�6   $ 
Horizontal=�6*   $��1��6C   $��Center=�5S      $
 Hand��66   $��Center=�6D   .+�5U      �� $��
0,20,20,20q�6   $ Vertical=�61   $��Center=�5V      $��Center=�6:   .+�5W      �� -   5         ��Name$ EngOut��5X      $	��200��6)   $��33��65   $��18(�6A   $��5,0,5,57q�5Y      $��0,0,0,1q�6+   ���	#FF0F4C75��5W      �� *
EngLbOut+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=���5Z   1   �� *
LLBOutFG+5[      �� 5]      $��	0,20,0,20q�6   $ Vertical=�60   $��Center=�5^      $��Center=�6:   .+�5_      �� -   5        $ RusOut��5`      $	��200��6)   $��33��65   $��18(�6A   $��5,0,5,25q�5a      $��0,0,0,1q�6+   ���	#FF0F4C75��5_      �� *
RusLbOut+$ TwoWay=�$ PropertyChanged=���5b   1   �� *
RLBOutFG+�� 5c      $
��Show��5d      ���#0f4c75$��18(�6=   ���	#FF0F4C75$��5,0,5,0q�5e   1   ��5c      �� *ShowTheRest+5e   1   5f      �� 5h      $��
20,20,0,20q�6   $ Vertical=�61   $��Center=�5i      $��Center=�6:   .+�5j      �� -   5        $ UzbOut��5k      $	��200��6)   $��33��65   $��18(�6A   $��5,0,5,25q�5l      $��0,0,0,1q�6+   ���	#FF0F4C75��5j      �� *
UzbLbOut+$ TwoWay=�$ PropertyChanged=���5m   1   �� *
RLBOutFG+�� 5n      $��18(�6;   $��Random��5o      ���#0f4c75���	#FF0F4C75$��5,0,5,0q�5p   1   ��5n      �� *	Randomize+5p   1   5q      5s      �� 5u      $��0,0,0,0q�6   $��2��6*   $ 
Horizontal=�67   $��Center=�5v      $��Center=�66   $	��670��6Q   .+�5x      �� $��
0,20,20,20q�6   $ Vertical=�61   $��Center=�5y      $��Center=�6:   .+�5z      �� -   5         ��Name$ EngIn��5{      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$  English��6-   $	��200��6W   $��33��5|       �� 
CaretBrush
 �����
����������	#FF0F4C75$��5,0,5,57q�5}      $��18(�60   ��5z      �� *
EngTxtIn+$ TwoWay=�$ PropertyChanged=�5}   0   5~      �� 5�      $��	0,20,0,20q�6   $ Vertical=�60   $��Center=�5�      $��Center=�6:   .+�5�      �� -   5        $ RusIn��5�      $  Russian��6-   $	��200��6W   $��33��5�      
 �����
����������	#FF0F4C75$��5,0,5,57q�5�      $��18(�60   ��5�      �� *
RusTxtIn+$ TwoWay=�$ PropertyChanged=�5�   0   5�      �� 5�      $��
20,20,0,20q�6   $ Vertical=�61   $��Center=�5�      $��Center=�6:   .+�5�      �� -   5        $ UzbIn��5�      $  Uzbek��6-   $	��200��6U   $��33��5�      
 �����
����������	#FF0F4C75$��5,0,5,25q�5�      $��18(�60   ��5�      �� *
UzbTxtIn+$ TwoWay=�$ PropertyChanged=�5�   0   �� 5�      $
��Save��6   ���#0f4c75���	#FF0F4C75$��5,0,5,0q�5�   5   $��18(�6F   ��5�   ,   �� *
SaveWord+5�   F   5�      5�      5�      �� 5�   
   -	   5        $��ButtonCloseMenu��5�      ���	#4C000000$��Bottom=�5�      $y�Hidden=�5�      $
 Hand��6%   $��0q�63   ��5�   (   �� *ActualHeight+ �� ElementName$ listG����5�   (   Z� ��5�   ,   Z� 5�   3   � 5�   
   -
   5        $ GridMenu��5�      $
��Left=�6!   ���#1b262c$��0��6Q    5�      �� 5�      $��* �6    �� 5�      $��* �6    .+�5�      �� $ Vertical=�6   .+�5�      �� -   5        $ OpenList��5�      $��	All Words��5�      ���#0f4c75$��18(�6B   ���	#FF0F4C75$��
10,30,10,0q�5�   1   ��5�   +   �� *OpenWordsList+5�   1   5�      �� 5�      $
��Exit��6   $��1��6$   $��Bottom=�61   $��0q�6L   ���#0f4c75���	#FF0F4C75$
 Hand��5�   B   $��
10,0,10,10q�5�      $��18(�6H   ��6)   �� *
ExitButton+. 	 (System.Windows.Interactivity.Interaction   Triggers 5�      / 	 )System.Windows.Interactivity.EventTrigger  5�         	EventName$ Click��6%   . 	 (System.Windows.Interactivity.TriggerBase    Actions.  5�      >	 
 8Microsoft.Expression.Interactivity.Core.CallMethodAction	  ! 	  
MethodName$! Close��6.   " 	  TargetObject" 5�      �� # �� RelativeSource# �� $ �� Mode$$ FindAncestor=�% �� AncestorType
% Window5�      5�      5�      � 5�   
   .+�5�      �� !
  Prism.Regions.RegionManager& 
  
RegionName$& ContentRegion��6   5�      5�      5�      