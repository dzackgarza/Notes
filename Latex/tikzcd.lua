local system = require 'pandoc.system'

local tikz_doc_template = [[
\documentclass{standalone}
\usepackage{tikz}
\usetikzlibrary{arrows, arrows.meta, cd, fadings, patterns, calc, decorations.markings, matrix, positioning, decorations, shapes}
\usepackage{mathtools}
\usepackage{amsmath, amsthm, amssymb, amsfonts, amsxtra, amscd, thmtools, xpatch}
\usepackage{stmaryrd}
\DeclarePairedDelimiter\qty{(}{)}
\input{/home/zack/Notes/Latex/latexmacs.tex}
\begin{document}
\nopagecolor
%s
\end{document}
]]

local function tikz2image(src, filetype, outfile)
  system.with_temporary_directory('tikz2image', function (tmpdir)
    system.with_working_directory(tmpdir, function()
      local f = io.open('tikz.tex', 'w')
      f:write(tikz_doc_template:format(src))
      f:close()
      os.execute('pdflatex tikz.tex')
      os.execute('pdf2svg tikz.pdf "' .. outfile .. '"')
    end)
  end)
end


local function file_exists(name)
  local f = io.open(name, 'r')
  if f ~= nil then
    io.close(f)
    return true
  else
    return false
  end
end

local function starts_with(start, str)
  return str:sub(1, #start) == start
end


function RawBlock(el)
  if starts_with('\\begin{tikzcd}', el.text) then
    if FORMAT:match 'latex' or FORMAT:match 'pdf' or FORMAT:match 'markdown' then
      ril = pandoc.RawInline( "tex", "\\begin{center}" .. el.text .. "\\end{center}")
    elseif FORMAT:match 'html' then
      local filetype = 'svg'
      local sha = pandoc.sha1(el.text)
      local bname = system.get_working_directory() .. '/' .. sha
      local fname = bname .. '.' .. filetype
      if not file_exists(fname) then
        tikz2image(el.text, filetype, fname)
      end
      ril = pandoc.RawInline('html', '<p style="text-align:center;"> <img class="tikz" src="' .. fname .. '"></p>')
    end
    return pandoc.Para(ril)
  else
   return el
  end
end
