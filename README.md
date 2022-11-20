# onSlideOver
Let’s imagine HStack full of views. You put down your finger on the leftmost view and lift it up on the rightmost one. What modifier to use for the views in-betweeen just to be notified when the finger is sliding over them? With mouse it would be onHover, but with finger is there anything?

# IDEA: 
https://stackoverflow.com/questions/4838609/detect-which-view-your-finger-is-sliding-over-in-android

# obfuscated.swift
This file shows the idea in action, but with terribly ugly code.

# firstAttempt.swift 
In this file added modifier fails when touch originated outside 
