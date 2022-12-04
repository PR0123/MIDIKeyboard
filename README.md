The question is [how to handle incoming MIDI events in Core Midi](https://developer.apple.com/forums/thread/721191#721191021) or [with higher level framework as AVFoundation](https://developer.apple.com/forums/thread/721023)?

To allow the keyboard view mimic glissando functionality, I need to answer [this question](https://developer.apple.com/forums/thread/720680). Here it is [paraphased](https://stackoverflow.com/questions/4838609/detect-which-view-your-finger-is-sliding-over-in-android), with the idea [visualized](https://youtu.be/Sq2sa9aaOlA).

In [this file](obfuscated.swift) I implemented the idea of the view, but with terribly ugly code. In [this file](firstAttempt.swift) I added modifier that fails when touch originated outside of it. Can a SwiftUI View react to touches outside of its frame?

With this knowledge I could try to implement something as:

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
