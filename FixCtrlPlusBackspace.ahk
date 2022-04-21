^Backspace::
Send ^a^x
contents := clipboard
contents := % RegExReplace( contents, "\w+$")
StringTrimRight, clipboard, contents, 1
Send ^v
return
