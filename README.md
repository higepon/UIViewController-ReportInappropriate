## What is this?
You can easily implement "Report Inappropriate" feature for your iOS App!

image here

## How to install
- Make sure you have MessageUI.framework added.
- Copy UIViewController+ReportInappropriate.h and .m to your project

## How to use
1. Import the header file in your UIViewController

```
#import "UIViewController+ReportInappropriate.h"
```

2. Call makeReportWithEmailAddress

```
[self makeReportWithEmailAddress:@"higepon@example.com" emailBody:@"Found inappropriate content!"];
```

3. Done!
