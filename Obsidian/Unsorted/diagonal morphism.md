Given $X\in \Sch_{/S}$, define the **diagonal morphism** as $\Delta_{X/S}: X\to X \fiberprod{S} X$:

\begin{tikzcd}
	X \\
	\\
	&& {X\fiberprod{S} X} && X \\
	\\
	&& X && S
	\arrow["f", from=3-5, to=5-5]
	\arrow["f"', from=5-3, to=5-5]
	\arrow["{\pi_1}"', from=3-3, to=5-3]
	\arrow["{\pi_2}", from=3-3, to=3-5]
	\arrow["{\id_X}"', curve={height=30pt}, from=1-1, to=5-3]
	\arrow["{\id_X}", curve={height=-30pt}, from=1-1, to=3-5]
	\arrow["{\exists \Delta_X}", dashed, from=1-1, to=3-3]
\end{tikzcd}

> [Link to diagram](https://q.uiver.app/?q=WzAsNSxbMiw0LCJYIl0sWzQsNCwiUyJdLFs0LDIsIlgiXSxbMiwyLCJYXFxmaWJlcnByb2R7U30gWCJdLFswLDAsIlgiXSxbMiwxLCJmIl0sWzAsMSwiZiIsMl0sWzMsMCwiXFxwaV8xIiwyXSxbMywyLCJcXHBpXzIiXSxbNCwwLCJcXGlkX1giLDIseyJjdXJ2ZSI6NX1dLFs0LDIsIlxcaWRfWCIsMCx7ImN1cnZlIjotNX1dLFs0LDMsIlxcZXhpc3RzIFxcRGVsdGFfWCIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==)