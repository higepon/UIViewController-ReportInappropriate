### What is this?
You can easily implement "Report Inappropriate" feature for your iOS App!

### How to install
- Make sure you have MessageUI.framework added in Build Phase.
- Copy UIViewController+ReportInappropriate.h and .m to your project.

### How to use
1. Import the header file in your UIViewController
```objc
#import "UIViewController+ReportInappropriate.h"
```

2. Call makeReportWithEmailAddress
```objc
[self makeReportWithEmailAddress:@"higepon@example.com" emailBody:@"Found inappropriate content!"];
```
3. Done!
