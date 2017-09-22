# MPS-in-Julia-minicourse
Material for a minicourse of (uniform) matrix product states, implemented in Julia.
The course takes/took place in the Perimeter Institute in Fall 2017.
Credit for much of the material belongs to Ash Milsted (https://github.com/amilsted) and Guifre Vidal.

## Useful links

Official Julia documentation:
https://docs.julialang.org/en/stable/

Some lecture notes on tensor networks:
https://arxiv.org/abs/1603.03039<br>
Section 1 is a good to the whole concept of tensor networks and the graphical notation.
Section 3 talks about MPS, and covers some of the things we have covered and will cover, in addition to stuff we wont' talk about in this course.

Unfortunately, I've struggled to find references that would introduce MPS in the manner we are doing it here, i.e., concentrating on uniform, infinite MPSes, and slowly going over the fundamentals, assuming no prior knowledge. However, here's a few you can try if you want to:<br>
https://arxiv.org/pdf/quant-ph/0608197.pdf<br>
https://arxiv.org/pdf/0907.2796.pdf<br>
https://arxiv.org/pdf/1306.2164.pdf

## The files

`meeting_01.ipynb`
An IJulia notebook for the first meeting.

`meeting_02.ipynb`
An IJulia notebook for the second meeting.

`homework_01_template.ipynb`
A template notebook for the first homework, with blanks to fill in.

`MPSTools.jl`
A fancier template for the first homework, with a module and some parametric types and all kinds of other goodies. For the hardcore.

`meeting_03.ipynb`
An IJulia notebook for the third meeting. Enhanced after the meeting with notes on the stuff we didn't have time to cover live. Also includes instructions and a template for the second homework.
