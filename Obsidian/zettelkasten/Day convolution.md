---
aliases: ["convolution product"]
---

See [end](coend.md) and [coend](coend.md).

For $\cat{C}$ a $\Top_*\dash$[enriched](Enriched%20category.md) [symmetric monoidal](Symmetric%20monoidal%20category.md) category, define a convolution product
$$
\hat\tensor: \Fun(\cat C, \Top_*)^{\times 2} \to \Fun(\cat C, \Top_*)
$$
as the following left [Kan extension](Kan%20extension.md):

% https://q.uiver.app/?q=WzAsNCxbMCwwLCJcXGNhdHtDfV57XFx0aW1lcyAyfSJdLFsyLDAsIlxcVG9wXypee1xcdGltZXMgMn0iXSxbNCwwLCJcXFRvcF8qIl0sWzAsMiwiXFxjYXR7Q30iXSxbMCwxLCIoRiwgRykiXSxbMSwyLCJcXHdhaXRcXHRlbnNvclxcd2FpdCJdLFswLDMsIisiLDJdLFszLDIsIkZcXGhhdFxcdGVuc29yIEciLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0= \\begin{tikzcd} {\\cat{C}^{\\times 2}} && {\\Top\_\*^{\\times 2}} && {\\Top\_\*} \\\\ \\\\ {\\cat{C}} \\arrow\["{(F, G)}", from=1-1, to=1-3\] \\arrow\["\\wait\\tensor\\wait", from=1-3, to=1-5\] \\arrow\["{+}"', from=1-1, to=3-1\] \\arrow\["{F\\hat\\tensor G}"', dashed, from=3-1, to=1-5\] \\end{tikzcd}