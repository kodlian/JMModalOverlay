## JMModalOverlay.
Create easily and display a modal overlay with custom content above a `NSWindow`.

![JMModalOverlay Demo screenshot](https://raw.github.com/kodlian/JMModalOverlay/master/Demo/Preview.gif)


### Features
The content is provided by a `NSViewController`. 

The modalOverlay contains many customizable properties: backgroundColor, appearance, animates, animation direction, .... 

Notifications will be sent before and after the modalOverlay is shown and closed.
The behavior of modalOverlay can be altered by a delegate. 

See the header `JModalOverlay.h` for a description of functionalities, it's fully documented.

### How To Get Started
1. Add `JMModalOverlay.xcodeproj` to your project
2. Link your application against JMModalOverlay (framework)
3. Import `<JMModalOverlay/JMModalOverlay.h>` in your code files

* For distributed app, add a copy phase to include the framework in the app bundle.

* The JMModalOverlay requires [QuartzCore.framework](http://developer.apple.com/library/mac/#documentation/graphicsimaging/reference/QuartzCoreRefCollection/_index.html "Quartz Code Framework Reference").

See Demo app of JModalOverlay for example.

### Contact
Twitter: **@kodlian**

**www.kodlian.com/contact**


