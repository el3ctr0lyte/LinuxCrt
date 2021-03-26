# LinuxCrt
A small library to provide similar functions of the CRT unit from freepascal, but using ascii escape sequences instead of a custom driver.

# What is wrong with CRT?
The crt unit from freepascal does a weird thing on linux. It puts the terminal in raw mode and does some special thing to get colored text on the screen and to provide other functionality. This is not how you normally do this kind of thing. Usually you use ansi escape sequences to change the color of text. That is why i wrote this library. It provides similar functionality to the CRT unit of freepascal, but tailored to linux using ascii escape sequences.

# How do i use it?

You can look at the library itself which is very small and easy to understand. You can also compile the test program to see it in action!
Here the basic functions.
```
procedure mcFgColor(color:mcColor);
procedure mcBgColor(color:mcColor);
procedure mcAttr(attr:mcColor);
procedure mcClsLn();
procedure mcClsDisp();
procedure mcGotoXYH(x,y:mcValue);
procedure mcGotoXYf(x,y:mcValue);
```
+ The mcFgColor function changes the foreground color of the text.
+ The mcBgColor function changes the background color of the text.
+ The mcAttr function applies an attribute to the text(like underline).
+ The mcClsLn function clears the current line(which is great for creating animations in terminal).
+ The mcClsDisp function clears the screen.

The last two functions i just added because they were in the documentation i had for ascii terminal escape sequences. I have not tested them, and i do not 
know what the difference is between them. They are supposed to change the position of the cursor.
