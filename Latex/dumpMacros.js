var macs = require("/home/zack/.mume/mathjax_config.js").TeX.Macros
as  = Object.entries(macs).map(a => `\\newcommand{\\${a[0]}}[${a[1][1]}]{${a[1][0]}}`)
require('fs').writeFile("/home/zack/Notes/Latex/latexmacs.txt", as.join('\n'), a => a)
