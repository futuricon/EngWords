   M S B A M L   `   `   `  ����C  ?EngWords, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:WareHouse.BehavioursWareHouse.Behaviours  5      X TXceed.Wpf.Toolkit, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4P:clr-namespace:Xceed.Wpf.Toolkit;assembly=Xceed.Wpf.ToolkitXceed.Wpf.Toolkit 5	      /clr-namespace:EngWords.ViewsEngWords.Views  5      "    EngWords.Views.WordsListView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      3
behaviours"clr-namespace:WareHouse.Behaviours  5      S OPrism.Wpf, Version=7.2.0.1422, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59Y	 UPrism.Unity.Wpf, Version=7.2.0.1422, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59&prismhttp://prismlibrary.com/  	 5      Gxctk:clr-namespace:Xceed.Wpf.Toolkit;assembly=Xceed.Wpf.Toolkit  	 5	      *localclr-namespace:EngWords.Views  	 5      !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel$
  True��5
       � 	Resources 5         PrimaryHueLightBrush �� Color " PrimaryHueLightForegroundBrush  PrimaryHueMidBrush   PrimaryHueMidForegroundBrush  PrimaryHueDarkBrush ! PrimaryHueDarkForegroundBrush  	CloseMenu �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value R� KeyTime  System.Windows.Visibility   Visible	 R� Value
   Hidden��%x  &	        &	 !     &	 @     &	 a     &	 �     &	 �     &	 �     �� 5   
   $ #3282b8��67   �� 5   
   $ White��6A   �� 5   
   $ #3282b8��65   �� 5   
   $ White��6?   �� 5   
   $ #0f4c75��66   �� 5   
   $ White��6@   �� 5   
   .��5      U� $ (UIElement.Opacity)�6,   $ listView��5   ,   .\�5        $ 0��6'   $	 100Q�63     5      $ 0:0:0.2��6'   $ 0Q�69   5      T� 5      $ (UIElement.Visibility)�6-   $ ButtonCloseList��5   -   ..�5      i� $ 0��6)   #	 Z 65   i� 5      $ 0:0:0.3��6)   #	 Z
 6;   5       5!      5#       � Triggers 5$      :� 5%   
    :� RoutedEvent$ ButtonBase.Click��6    :� 
SourceName$ ButtonCloseList��66   .[�5&      �� #��[ 6   5'      .��5)      � -   5         �Name$ listG��5)      .+�5+   
   �� -   5        $��ButtonCloseList��5+   "   $��2��6   ���	#4C000000$��Stretch=�5-       � Cursor$
 Hand��5/      $��0q�6   ��5,   (   Z� ��5-   -   Z� ��5.      �� *CloseWordsList+��5/   +   �� *ActualHeight+ �� ElementName$ listG��� 51   
   $��100,40,100,0q�6   $��60��6%   $	��Top=�61   ���#1b262c.+�53      � $	��670��6   $��Center=�6    � ColumnDefinitions 54      �� 55      $��* �6'   �� 56      $��* �6'   �� 57      $��* �6'   .+�5:      � .+�5;      �� $	��200��6   $��32��6+   
������� �� 
IsEditable$
 True��6J   $��18(�6\   $��0q�6j   ���	#FF0F4C75$��5,10,5,0q�5<   7   $	��Top=�6I   ���	#FF1B262C �� SelectedIndex 5=      �� *SelectedLang+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�.@�5>      �� .��6'   	English5@      �� 5A      .��6'   	Russian5C      �� 5D      .��6'   Uzbek5F      5G      5H      � 5J      $��1��6   .+�5K      �� -   5         ��Name$ RusIn��5L      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$  Word��6-   $	��200��6T   $��32��5M       �� 
CaretBrush
 �����
����������	#FF0F4C75$��5,10,5,0q�5N      $	��Top=�60   $��18(�6H   ��5K      �� *
WordToFind+$ TwoWay=�$ PropertyChanged=�5N   H   5O      � 5Q      $��2��6   .+�5R      �� $
��Find��6   ���#0f4c75$	��200��6^   ���	#FF0F4C75$��5,8,5,0q�5S   5   $	��top=�6F   $��18(�6^   ��5R   ,   �� *
FindWord+5S   ^   5T      5V      �� 5X      $��3��6   $��2��6,   ���	#FF171A20$��Bottom=�6H   5Y      � 5[   
   $��100,100,100,50q�6   .+�5\      �� .+�5]      �� $��51��6   ���#1b262c6(   �� 5^      $��47��6   ���#4049556(   �� 5_      $��47��6   ���#1b262c6(   �� 5`      $��47��6   ���#4049556(   �� 5a      $��47��6   ���#1b262c6(   �� 5b      $��47��6   ���#4049556(   �� 5c      $��47��6   ���#1b262c6(   �� 5d      $��47��6   ���#4049556(   �� 5e      $��47��6   ���#1b262c6(   �� 5f      $��47��6   ���#4049556(   �� 5g      $��47��6   ���#1b262c6(   �� 5h      $��47��6   ���#4049556(   �� 5i      $��47��6   ���#1b262c6(   �� 5j      $��47��6   ���#4049556(   �� 5k      $��47��6   ���#1b262c6(   �� 5l      $��47��6   ���#4049556(   5m      �� 5n      -   5         ��Name$ listView��5n      /   )WareHouse.Behaviours.GridViewColumnResize   Enabled$
 True��5o        LVItemStyle#��[ 5p      $��Disabled=�5q      $��Visible=�5r      $��Stretch=�5s      ���	#DDF9F9F9��5n   )   �� *WordsCollection+��5t      Z� ��6)   Z�  �� View 5u      �� 5v      $
��Auto=�6   .P�5x      �� $��English��6)      Width$ *��6:     GridViewColumnHeaderStyle �� HeaderContainerStyle# �  5y   )    �� Width$
 Auto��6l    �� CellTemplate 5z      �� 5{   "   .R�5|   &   �� ���#171a20$��1,0,0,0q�6C   $��-6,-23,0,-23q�6]   ._�5}   *   �� $��10,0,0,0q�6H   $��0q�6[   $
��Left=�6f   ���	#FFF0F0F0$��Center=�5~   G   $��18(�6b   ��5}   0   �� *Eng+5~   b   5   '   5�   #   5�      �� 5�      $��Русский��6)   $ *��6:   # �  5�   )   $
 Auto��6l    5�      �� 5�   "   .R�5�   &   �� ���#171a20$��1,0,0,0q�6C   $��-6,-23,0,-23q�6]   ._�5�   *   �� $��10,0,0,0q�6H   $��0q�6[   $
��Left=�6f   ���	#FFF0F0F0$��Center=�5�   G   $��18(�6b   ��5�   0   �� *Rus+5�   b   5�   '   5�   #   5�      �� 5�      $��	O`zbekcha��6)   $ *��6<   # �  5�   )   $
 Auto��6l    5�      �� 5�   "   .R�5�   &   �� ���#171a20$��1,0,0,0q�6C   $��-6,-23,0,-23q�6]   ._�5�   *   �� $��10,0,0,0q�6H   $��0q�6[   $
��Left=�6f   ���	#FFF0F0F0$��Center=�5�   G   $��18(�6b   ��5�   0   �� *Uzb+5�   b   5�   '   5�   #   5�      �� 5�      $
��Edit��6)   # �  67   $ 90��6z    5�      �� 5�   "   .R�5�   &   � .+�5�   *   �� $��1��64   $��50��6>   ���#171a20$
��Left=�6Y   $��
-6,-7,0,-7q�6t   �� 5�   *     �� Orientation$  
Horizontal=�65   $��2,5,0,5q�6N   .+�5�   .   �� $��0,0,0,0q�5�   5   $��Right=�6F   $��0q�6b   ���	#00000000$��35��5�   5   $��Center=�6A   $��35��6\   ���	#00000000��5�   5   �� ��5�   5   �� ! �� RelativeSource! �� " �� AncestorType"" ��# �� Path$# DataContext.EditWord�.��5�   2   '  !MaterialDesignThemes.Wpf.PackIcon  $   Kind$
$ Edit=�6J   $��25��6V   $��25��6a   5�   /   �� 5�   .   $��0,0,0,0q�5�   5   $��Right=�6F   $��0q�6b   ���	#00000000$��35��5�   5   $��Center=�6A   $��35��6\   ���	#00000000��5�   5   �� ��5�   5   �� ! �� "" ��$# DataContext.DeleteWord�.��5�   2     $$ Delete=�6J   $��25��6X   $��25��6c   5�   /   5�   +   5�   '   5�   #   5�      5�      5�      5�      � 5�   
   $��2��6   .+�5�      �� !  Prism.Regions.RegionManager%   
RegionName$% ContentRegion2��6   5�      5�      5�      