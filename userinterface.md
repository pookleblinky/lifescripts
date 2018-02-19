I don't like adding UI's. I prefer to make my own on the fly, fiddle around with
stuff until it works the way I like. I view UI as an unnecessary, opinionating
addition.

Here I'll just describe how I'm using stuff.

I have a fish function called today, it runs todayscript.rkt, and >'s it into
status. Another function called agenda, that cats status to show me the day's
agenda.

I use tmux. One window is always split into three: a vim, a racket repl, and a
terminal. I prefer loading things into the repl to run them, rather than adding
output to the file to be executed.

Someone else could do things entirely differently, without being constrained by
my own preferences for UI.

Basically, don't expect much in the way of user interface except at the most
minimal levels.
