   M S B A M L   `   `   `  ????C  ?Connect4, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:Connect4Connect4  5   	       Connect4.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:Connect4     5   	     ? Title$  
MainWindow??5   	   $	??470??6   $	??750??6)   .??5	      ? $??0,0,0,0q?6   .+?5
   
   ?? $
??Left=?6   $	??156??6/   $??
639,63,0,0q?6<   
???   ?$	??Top=?6_   $??66??6w   
???   ?6?   ?? 5   
   $
??Left=?6   $	??414??6+   $??0,42,0,0q?68   $	??Top=?6J   $	??624??6b   $??
/board.png??6n   ?? 5   
   -   5         ??Name$ column1??5      $	??↓??6"   $
??Left=?6.   $??	47,14,0,0q?6I   $	??Top=?6]   
 ? Tag$ 0??6?   $??20??6?   ?? 5   
   -   5        $ column2??5      $	??↓??6"   $
??Left=?6.   $??
132,14,0,0q?6I   $	??Top=?6]   $ 1??6?   $??20??6?   ?? 5   
   -   5        $ column3??5      $	??↓??6"   $
??Left=?6.   $??
217,14,0,0q?6I   $	??Top=?6]   $ 2??6?   $??20??6?   ?? 5   
   -   5        $ column4??5      $	??↓??6"   $
??Left=?6.   $??
303,14,0,0q?6I   $	??Top=?6]   $ 3??6?   $??20??6?   ?? 5   
   -   5        $ column5??5      $	??↓??6"   $
??Left=?6.   $??
388,14,0,0q?6I   $	??Top=?6]   $ 4??6?   $??20??6?   ?? 5   
   -   5        $ column6??5      $	??↓??6"   $
??Left=?6.   $??
472,14,0,0q?6I   $	??Top=?6]   $ 5??6?   $??20??6?   ?? 5   
   -   5        $ column7??5      $	??↓??6"   $
??Left=?6.   $??
557,14,0,0q?6I   $	??Top=?6]   $ 6??6?   $??20??6?   ?? 5   
   -   5         ??Name$ a??5      $
??Left=?6   $??58??66   $??
28,363,0,0q?6B   $	??Top=?6V   $??80??6n    J? RenderTransformOrigin$ 0.348,0.492&?6y   ?? 5   
   -	   5        $ b??5      $
??Left=?6   $??58??66   $??
28,301,0,0q?6B   $	??Top=?6V   $??80??6n   $ 0.348,0.492&?6y   ?? 5   
   -
   5        $ c??5      $
??Left=?6   $??58??66   $??
28,239,0,0q?6B   $	??Top=?6V   $??80??6n   $ 0.348,0.492&?6y   ?? 5   
   -   5        $ d??5      $
??Left=?6   $??58??66   $??
28,177,0,0q?6B   $	??Top=?6V   $??80??6n   $ 0.348,0.492&?6y   ?? 5   
   -   5        $ e??5      $
??Left=?6   $??58??66   $??
28,115,0,0q?6B   $	??Top=?6V   $??80??6n   $ 0.348,0.492&?6y   ?? 5   
   -   5        $ f??5      $
??Left=?6   $??58??66   $??	28,53,0,0q?6B   $	??Top=?6U   $??80??6m   $ 0.348,0.492&?6x   ?? 5   
   -   5        $ a1??5      $
??Left=?6   $??58??67   $??113,363,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 5   
   -   5        $ b1??5      $
??Left=?6   $??58??67   $??113,301,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 5    
   -   5        $ c1??5       $
??Left=?6   $??58??67   $??113,239,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 5!   
   -   5        $ d1??5!      $
??Left=?6   $??58??67   $??113,177,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 5"   
   -   5        $ e1??5"      $
??Left=?6   $??58??67   $??113,115,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 5#   
   -   5        $ f1??5#      $
??Left=?6   $??58??67   $??
113,53,0,0q?6C   $	??Top=?6W   $??80??6o   $ 0.348,0.492&?6z   ?? 5%   
   -   5        $ a2??5%      $
??Left=?6   $??58??67   $??198,363,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 5&   
   -   5        $ b2??5&      $
??Left=?6   $??58??67   $??198,301,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 5'   
   -   5        $ c2??5'      $
??Left=?6   $??58??67   $??198,239,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 5(   
   -   5        $ d2??5(      $
??Left=?6   $??58??67   $??198,177,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 5)   
   -   5        $ e2??5)      $
??Left=?6   $??58??67   $??198,115,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 5*   
   -   5        $ f2??5*      $
??Left=?6   $??58??67   $??
198,53,0,0q?6C   $	??Top=?6W   $??80??6o   $ 0.348,0.492&?6z   ?? 5-   
   -   5        $ a3??5-      $
??Left=?6   $??58??67   $??283,363,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 5.   
   -   5        $ b3??5.      $
??Left=?6   $??58??67   $??283,301,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 5/   
   -   5        $ c3??5/      $
??Left=?6   $??58??67   $??283,239,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 50   
   -   5        $ d3??50      $
??Left=?6   $??58??67   $??283,177,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 51   
   -   5        $ e3??51      $
??Left=?6   $??58??67   $??283,115,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 52   
   -   5        $ f3??52      $
??Left=?6   $??58??67   $??
283,53,0,0q?6C   $	??Top=?6W   $??80??6o   $ 0.348,0.492&?6z   ?? 54   
   -    5        $ a4??54      $
??Left=?6   $??58??67   $??368,363,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 55   
   -!   5        $ b4??55      $
??Left=?6   $??58??67   $??368,301,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 56   
   -"   5        $ c4??56      $
??Left=?6   $??58??67   $??368,239,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 57   
   -#   5        $ d4??57      $
??Left=?6   $??58??67   $??368,177,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 58   
   -$   5        $ e4??58      $
??Left=?6   $??58??67   $??368,115,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 59   
   -%   5        $ f4??59      $
??Left=?6   $??58??67   $??
368,53,0,0q?6C   $	??Top=?6W   $??80??6o   $ 0.348,0.492&?6z   ?? 5;   
   -&   5        $ a5??5;      $
??Left=?6   $??58??67   $??453,363,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 5<   
   -'   5        $ b5??5<      $
??Left=?6   $??58??67   $??453,301,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 5=   
   -(   5        $ c5??5=      $
??Left=?6   $??58??67   $??453,239,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 5>   
   -)   5        $ d5??5>      $
??Left=?6   $??58??67   $??453,177,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 5?   
   -*   5        $ e5??5?      $
??Left=?6   $??58??67   $??453,115,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 5@   
   -+   5        $ f5??5@      $
??Left=?6   $??58??67   $??
453,53,0,0q?6C   $	??Top=?6W   $??80??6o   $ 0.348,0.492&?6z   ?? 5B   
   -,   5        $ a6??5B      $
??Left=?6   $??58??67   $??538,363,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 5C   
   --   5        $ b6??5C      $
??Left=?6   $??58??67   $??538,301,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 5D   
   -.   5        $ c6??5D      $
??Left=?6   $??58??67   $??538,239,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 5E   
   -/   5        $ d6??5E      $
??Left=?6   $??58??67   $??538,177,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 5F   
   -0   5        $ e6??5F      $
??Left=?6   $??58??67   $??538,115,0,0q?6C   $	??Top=?6X   $??80??6p   $ 0.348,0.492&?6{   ?? 5G   
   -1   5        $ f6??5G      $
??Left=?6   $??58??67   $??
538,53,0,0q?6C   $	??Top=?6W   $??80??6o   $ 0.348,0.492&?6z   ?? 5I   
   $??Yellow:??6   $
??Left=?6"   $??
648,71,0,0q?6=   $	??Top=?6Q   ???	#FFB8D411$??Franklin Gothic Demi Cond)?6?   ?? 5J   
   -2   5         ??Name$ Redscorelabel??5J      $
??Left=?6'   $??0??6B   $??
660,96,0,0q?6N   $	??Top=?6b   
???????6z   ?? 5K   
   $??Blue:??6   $
??Left=?6    $??652,158,0,0q?6;   $	??Top=?6P   
????? ?$??Franklin Gothic Demi Cond)?6?   ?? 5L   
   -3   5        $ Bluescorelabel??5L      $??0??6(   $
??Left=?64   $??661,185,0,0q?6O   $	??Top=?6d   
???????6|   5N      5O      