# textadept-relative

A relative line numbers module for Textadept. This could be especially useful with one of the
Vim modules available.

## Installation and Usage

Clone this repo into `~/.textadept/modules` and add `relative = require('textadept-relative')` to your
`~/.textadept/init.lua`. If you wish to deactivatet , you can bring up the command entry and type `relative.deactivate()`.
You can reactivate later with `relative.activate()`.

## Caveats

As I can't find any way to overwrite the line numbers directly, I replaced the line number margin with a text margin and 
set the margin text. Because scintilla only allows one margin text, even if there are multiple text margins, if any other
module is using/setting margin text they will intefere and create unpredictable results.