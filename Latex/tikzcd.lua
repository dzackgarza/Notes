package.path = '/home/zack/Notes/Latex/?.lua;'..package.path

local system = require 'pandoc.system'

--local tikz_doc_template = [[
--\documentclass{standalone}
--\usepackage{tikz}
--\usetikzlibrary{arrows, arrows.meta, cd, fadings, patterns, calc, decorations.markings, matrix, positioning, decorations, shapes}
--\usepackage{mathtools}
--\usepackage{amsmath, amsthm, amssymb, amsfonts, amsxtra, amscd, thmtools, xpatch}
--\usepackage{stmaryrd}
--\DeclarePairedDelimiter\qty{(}{)}
--\input{/home/zack/Notes/Latex/latexmacs.tex}
--\begin{document}
--\nopagecolor
--%s
--\end{document}
--]]

local tikz_doc_template = [[
\documentclass{standalone}
\input{/home/zack/Notes/Latex/preamble_common}
\begin{document}
\nopagecolor
%s
\end{document}
]]


local function tikz2image(src, outfile)
  system.with_temporary_directory('tikz2image', function (tmpdir)
    --print("Temp directory: " .. tmpdir)
    system.with_working_directory(tmpdir, function()
      local f = io.open('tikz.tex', 'w')
      f:write(tikz_doc_template:format(src))
      f:close()
      cmd1 =  'pdflatex tikz.tex > /dev/null 2>&1'
      cmd2 = 'pdf2svg tikz.pdf "' .. outfile .. '"'
      if pcall(cmd1) then
        print("Ok")
      else
        print("Error: cmd1")
      end
      if pcall(cmd2) then
        print("Ok")
      else
        print("Error: cmd2")
      end

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
      ril = pandoc.RawInline( "tex", "\\begin{center}\n" .. el.text .. "\n\\end{center}")
    elseif FORMAT:match 'html' then
      local sha = pandoc.sha1(el.text)
      local bname = system.get_working_directory() .. '/' .. sha
      local fname = bname .. '.' .. 'svg' 
      if not file_exists(fname) then
        --print("Making image:" .. el.text)
        tikz2image(el.text, fname)
      end
      ril = pandoc.RawInline('html', '<p style="text-align:center;"> <img class="tikz" src="' .. fname .. '"></p>')
    end
    return pandoc.Para(ril)
  else
   return el
  end
end
