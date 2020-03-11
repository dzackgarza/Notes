# Tuesday March 10th

I talked to [Erik Schreyer](https://erikschreyer.wordpress.com/) today about some of the research he did with his advisor [Jason Cantarella](http://www.jasoncantarella.com/wordpress/), including his dissertation work (which he spoke about in the Geometry seminar last week) and a few other papers.

His dissertation work involved a cool way to represent arbitrary planar curves by *piecewise circular* arcs:

![image-20200310232110171](/home/zack/.config/Typora/typora-user-images/image-20200310232110171.png)

From what I understand, this involves fixing a curve (blue), choosing a collection of circles $C_1, \cdots C_n$ (black) such that each $C_i$ intersects $C_{i+1}$ in at least one distinguished point $p_i$ (pink). The curve traced out by following an arc on $C_i$ and switching to circle $C_{i+1}$ at $p_i$ is intended to yield a good approximation to the original curve, with certain regularity conditions at the $p_i$ (such as the first derivatives on both arcs agreeing at the point).

Erik's work actually seems to go a bit farther -- he has an algorithm (a *curve-closing operator*) that actually takes an *open* curve and produces a closed curve that is "nearby" in a suitable norm. 