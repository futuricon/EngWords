   M S B A M L   `   `   `  ����C  ?EngWords, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:EngWords.ViewsEngWords.Views  5      #    EngWords.Views.UpdateWordView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      S OPrism.Wpf, Version=7.2.0.1422, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59Y UPrism.Unity.Wpf, Version=7.2.0.1422, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59&prismhttp://prismlibrary.com/   5      c	 _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity 	 5	      h
 dMicrosoft.Expression.Interactions, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bei9http://schemas.microsoft.com/expression/2010/interactions 
 5
      (localclr-namespace:EngWords.Views 
 5      !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel$
  True��5      .��5      � .+�5   
   �� ���	#7F000000 J� Effect 5      -  'System.Windows.Media.Effects.BlurEffect  5         Radius$ 15Q�6      
KernelType$ Gaussian=�6)   5      � 5   
   ���#1b262c$	��190��6$   $	��740��61   $��Stretch=�6=   $��Stretch=�5      .+�5      �� $��0,0,0,0q�6   $��2��6*    �� Orientation$ 
Horizontal=�67   $��Center=�5      $��Center=�66   .+�5      �� $��
0,20,20,20q�6   $ Vertical=�61   $��Center=�5      $��Center=�6:   .+�5      �� -   5         ��Name$ EngIn��5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$  English��6-   $	��200��6W   $��32��5       �� 
CaretBrush
 �����
����������	#FF0F4C75$��5,0,5,57q�5      $��18(�60   ��5      �� *
EngTxtUp+ �� Mode$ TwoWay=�	 �� UpdateSourceTrigger$	 PropertyChanged=�5   0   5      �� 5!      $��	0,20,0,20q�6   $ Vertical=�60   $��Center=�5"      $��Center=�6:   .+�5#      �� -   5        $ RusIn��5$      $  Russian��6-   $	��200��6W   $��32��5%      
 �����
����������	#FF0F4C75$��5,0,5,25q�5&      $��18(�60   ��5#      �� *
RusTxtUp+$ TwoWay=�$	 PropertyChanged=�5&   0   �� 5'      $��Cancel��6   ���#0f4c75$��18(�5)   2   ���	#FF0F4C75$��5,0,5,0q�5*   5   ��5(      �� *CancelUpdate+5*   5   5+      �� 5-      $��
20,20,0,20q�6   $ Vertical=�61   $��Center=�5.      $��Center=�6:   .+�5/      �� -   5        $ UzbIn��50      $  Uzbek��6-   $	��200��6U   $��32��51      
 �����
����������	#FF0F4C75$��5,0,5,25q�52      $��18(�60   ��5/      �� *
UzbTxtUp+$ TwoWay=�$	 PropertyChanged=�52   0   �� 53      $
��Save��6   ���#0f4c75���	#FF0F4C75$��5,0,5,0q�54   5   $��18(�6F   ��53   ,   �� *
UpdateWord+54   F   55      57      58      59      5:      