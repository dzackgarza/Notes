-- Do nothing unless we are targeting TeX.

function Math (m)
  if m.mathtype == "DisplayMath" then
    return pandoc.RawInline('tex', '\n\\begin{align*}'.. m.text .. '\\end{align*}')
  else
    return m
  end
end
