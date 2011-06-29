base = "http://byeloblog.net/"
style = dsyntax("Add style sheet link in place.",
  [location]
  ''(''link(rel: "stylesheet", type: "text/css", href: `location))
)
''(
`doctype("xml")
`doctype("xhtml")
html(xmlns: "http://www.w3.org/1999/xhtml", lang: "en") (head
  (title "#{`data[:title]}")
  meta(charset: "utf-8")
  `style("#{`base}reset.css")
  `style("#{`base}style.css")
  link(rel: "shortcut icon", href: "#{`base}qq.png", type: "image/png")
  `rem(''link(href: "#{`base}atom.xml", type: "application/atom+xml", rel: "alternate", title: "Blog Atom Feed")))
  (body
    ("#{`data[:header]}")
    (nav "#{`data[:nav]}")
    (div(class: "b") "#{`data[:body]}")))
