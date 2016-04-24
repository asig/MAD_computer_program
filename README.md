The MAD Computer Program
========================

Yesterday, during a heavy attack of nostalgia, I remembered the 
MAD Computer Program that the MAD magazine published when I was
a kid. A quick Google search told me that there were other people
like me, and some of them even published their results. Thanks to 
whoever runs meatfighter.com!

However, the folks over at [meatfighter.com](http://meatfighter.com/mad)
only typed in the Apple version! Luckily, the scans of the original
pages were online as well, and pretty easy to read (for me, 
not for my OCR...).

So, I went ahead a typed the Commodore loader in. But the result
was... well, disappointing. The lines were all totally wrong! So,
let's debug the code!

`80 FX=X1*SI+XC:LX=X2*SI+XC:FY=199-(Y1+YC):LY=199-(Y2-YC)`

Can you see what's wrong with this? Exactly, the y-coordinate
of the line end is not computed correctly. Let's fix it!

`80 FX=X1*SI+XC:LX=X2*SI+XC:FY=199-(Y1+YC):LY=199-(Y2+YC)`

After that change, it all worked like a charm!

C128 port
---------
The US version of the program is horribly slow (well, setting single
pixels in BASIC...). There seems to be a [German version]
(http://www.moodymike.de/archiv/archiv/mad_computer/mad_205_27.jpg)
that is different and contains some assembler code, but I wasn't 
in the mood to type it in again.

So, I grabbed my old C128 manual from www.retrozone.ch and started
to write a proper port in Basic 7.0. Ah, it felt like in the good
old times!

Update
------
I just had to try out the german version as well. They changed the
line drawing algorithm (Bresenham, if I'm not mistaken), but didn't
touch the pixel setting code. D'oh!

Also, the colors are different, and instead of "WHAT, ME WORRY?" it
says "ALFRED E. HACKER" below the portrait.
