# First step
I am looking for an answer to [this question](https://developer.apple.com/forums/thread/720680) asked on a forum. Yet another [explanation](https://stackoverflow.com/questions/4838609/detect-which-view-your-finger-is-sliding-over-in-android), plus [an entertaining visualization](https://youtu.be/Sq2sa9aaOlA).

In [this file](obfuscated.swift) I implemented the idea, but with terribly ugly code. In [this file](firstAttempt.swift) I added modifier that fails when touch originated outside of it. Can a SwiftUI View react to touches outside of its frame?

Final goal is to implement a MIDI keyboard View to use with SwiftUI to record MIDI files, so there is [the main question](https://developer.apple.com/forums/thread/721023). 

Knowing how to tap to midi events from external instrument, I could try to implement something as:

```swift
MIDIKeyboard(range:) { midiEvent in 
  //handle Midi events, e.g. record.
}
```

or
```swift
MIDIKeyboard(range:)
.onTap { midiEvent in
  //handle Midi events, e.g. record.
}
```
A hint on the simplest method of recording input from an external MIDI instrument to a file would also be helpful. Thank you.
