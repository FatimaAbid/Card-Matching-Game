   M S B A M L   `   `   `  ����  FlipFlopGame    FlipFlopGame.Window1   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  
MainWindow��5   	   $��743.298��6   $
��1014��6-   .��5      � $��center=�6   $��center=�6(   $	��709��6C   .+�5   
   � -   5        $��grid1��5      $
��Left=�6   $	��154��67   $��	87,56,0,0q�6D   $	��Top=�6W   $	��543��6o    � ColumnDefinitions 5      �� 5      $��1* �6#   �� 5	      $��1* �6#   �� 5
      $��1* �6#   �� 5      $��1* �6#    � RowDefinitions 5      �� 5      $��155px �6    �� 5      $��155px �6    �� 5      $��155px �6    .+�5      �� -   5        $��b0��5   %   $��0��6   ���	#00F5F5F5$��2q�6X   $��0,0,10,0q�6l   .��5      �� -   5        $
��img1��5      $"��/Resources/question-mark.png��6$   $
��Left=�6J   $	��112��6e    J� RenderTransformOrigin$ 1.698,0.993&�6q   $	��145��6�    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5      5      5      �� 5      -   5        $��b1��5   %   $��1��6   $��2q�6A   ���	#00C9C9C9$��0,0,10,0q�6m   .��5      �� -   5         ��Name$
 img2��5      $!��Resources/question-mark.png��6&   $
��Left=�6K   $	��112��6f   $ 1.698,0.993&�6r   $	��154��6�    5        5      5      5       �� 5!      -   5        $��b2��5!   7   $��2��6'   $��2q�6A   ���	#00C9C9C9$��0,0,10,0q�6l   .��5"      �� -   5        $
 img3��5"      $!��Resources/question-mark.png��6&   $
��Left=�6K   $	��112��6f   $ 1.698,0.993&�6r   $	��154��6�    5#        5$      5&      5'      �� 5(      -   5        $��b3��5(   %   $��3��6   $��2q�6A   ���	#00C9C9C9$��0,0,10,0q�6l   .��5)      �� -	   5        $
 img4��5)      $!��Resources/question-mark.png��6&   $
��Left=�6K   $	��112��6f   $ 1.698,0.993&�6r   $	��154��6�    5*        5+      5-      5.      5/      �� 50   
   -
   5         ��Name$ b4��50   !   $��0��6   ���	#00F5F5F5$��2q�6V   $��87,210,496,205q�6j   .��51      �� -   5        $
 img5��51      $"��/Resources/question-mark.png��6"   $
��Left=�6H   $	��112��6c   $ 1.698,0.993&�6o   $	��145��6�    52        53      55      56      �� 57   
   -   5        $ b5��57   !   $��0��6   ���	#00F5F5F5$��2q�6V   $��223,210,360,205q�6j   .��58      �� -   5        $
 img6��58      $!��Resources/question-mark.png��6"   $
��Left=�6G   $	��112��6b   $ 1.698,0.993&�6n   $	��145��6�    59        5:      5<      5=      �� 5>   
   -   5        $ b6��5>   !   $��0��6   ���	#00F5F5F5$��2q�6V   $��359,210,224,205q�6j   .��5?      �� -   5        $
 img7��5?      $!��Resources/question-mark.png��6"   $
��Left=�6G   $	��112��6b   $ 1.698,0.993&�6n   $	��145��6�    5@        5A      5C      5D      �� 5E   
   -   5        $ b7��5E   !   $��0��6   ���	#00F5F5F5$��2q�6V   $��495,210,89,205q�6j   .��5F      �� -   5        $
 img8��5F      $!��Resources/question-mark.png��6"   $
��Left=�6G   $	��112��6b   $ 1.698,0.993&�6n   $	��145��6�    5G        5H      5J      5K      �� 5L   
   -   5        $ b8��5L   !   $��0��6   ���	#00F5F5F5$��2q�6V   $��87,364,496,50q�6j   .��5M      �� -   5        $
 img9��5M      $!��Resources/question-mark.png��6"   $
��Left=�6G   $	��112��6b   $ 1.698,0.993&�6n   $	��145��6�    5N        5O      5Q      5R      �� 5S   
   -   5        $ b9��5S   !   $��0��6   ���	#00F5F5F5$��2q�6V   $��223,364,360,50q�6j   .��5T      �� -   5        $ img10��5T      $!��Resources/question-mark.png��6#   $
��Left=�6H   $	��112��6c   $ 1.698,0.993&�6o   $	��145��6�    5U        5V      5X      5Y      �� 5Z   
   -   5        $	 b10��5Z   !   $��0��6   ���	#00F5F5F5$��2q�6W   $��359,364,224,50q�6k   .��5[      �� -   5        $ img11��5[      $!��Resources/question-mark.png��6#   $
��Left=�6H   $	��112��6c   $ 1.698,0.993&�6o   $	��145��6�    5\        5]      5_      5`      �� 5a   
   -   5        $	 b11��5a   !   $��0��6   ���	#00F5F5F5$��2q�6W   $��495,364,89,50q�6k   .��5b      �� -   5        $ img12��5b      $!��Resources/question-mark.png��6#   $
��Left=�6H   $	��112��6c   $ 1.698,0.993&�6o   $	��145��6�    5c        5d      5f      5g      �� 5h   
   -   5        $	��scr��5h      $	��100��6   $
��Left=�6(   $��27��6C   $��	543,0,0,0q�6O    �� TextWrapping$
 Wrap=�6b   $	��Top=�6v   $��77��6�    �� TextAlignment$ Center=�6�   �� 5i   
   $��Score:��6   $
��Left=�6!   $��	495,0,0,0q�6<   $	��Top=�6O   $��43��6g   $��27��6r   �� 5j   
   -   5        $��timer��5j      $��00:00��6   $
��Left=�6,   $��27��6G   $��87,0,0,0q�6S   $
 Wrap=�6e   $	��Top=�6y   $��74��6�   $ Center=�6�   5k      5l      