### What is this?
You can easily implement "Report Inappropriate" feature for your iOS App in Objective-C or Swift!

![example](https://raw.githubusercontent.com/higepon/UIViewController-ReportInappropriate/master/images/report_example.png)
### How to install
- Make sure you have MessageUI.framework added in Build Phase.
![MessageUI.framework](https://raw.githubusercontent.com/higepon/UIViewController-ReportInappropriate/master/images/MessageUI.framework.png)
- (Swift) Copy UIViewController+ReportInappropriate.swift to your project.
- (Objective-C) Copy UIViewController+ReportInappropriate.h and .m to your project.

### How to use
(1) Import the header file in your UIViewController
```objc
#import "UIViewController+ReportInappropriate.h"
```

(2) Call makeReportWithEmailAddress
#### Swift
```swift
self.makeReport(withEmail: "higepon@example.com", messageBody: "Found inappropriate content!")
```
#### Objective-C
```objc
[self makeReportWithEmailAddress:@"higepon@example.com" emailBody:@"Found inappropriate content!"];
```

(3) Done!

![example](https://raw.githubusercontent.com/higepon/UIViewController-ReportInappropriate/master/images/report_example.png)
