# First step
I am looking for an answer to [this question](https://developer.apple.com/forums/thread/720680) asked on a forum. Yet another [explanation](https://stackoverflow.com/questions/4838609/detect-which-view-your-finger-is-sliding-over-in-android).

In [this file](obfuscated.swift) I implemented the idea, but with terribly ugly code.

In [this file](firstAttempt.swift) I added modifier that fails when touch originated outside of it. Can a SwiftUI View react to touches outside of its frame?

# Final goal
To implement a MIDI keyboard View to use with SwiftUI, like below.

MIDIKeyboard(fromMIDIKey: UInt8, toMIDIKey: UInt8) { midiEvent in 
  //handle Midi events, e.g. record.
}

or

MIDIKeyboard(range:)
.onTap{ midiEvent in
  //handle Midi events, e.g. record.
}


