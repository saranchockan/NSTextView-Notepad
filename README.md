# NSTextView Notepad
NSTextView Notepad is an app which allows the NSTextView to expand as you type.

# How does it work?
The app uses 'Anchors' to fix the edges of the NSTextView to the NSView. 
```Swift
activate(ScrollView.anchor.top.constant(0),ScrollView.anchor.paddingHorizontally(0))
activate(TextView.anchor.edges)
```
So when the user types a new line, the NSView expands, thus forcing the NSTextView to expand. 
The manipulation of NSTextView occurs on different layers such as NSLayoutManager, NSTextStorage etc. 

# License
This project is available under the MIT license. See the LICENSE file for more info.



