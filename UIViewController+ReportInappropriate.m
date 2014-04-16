//
// Created by Taro Minowa on 4/15/14.
// Copyright (c) 2014 Higepon Taro Minowa. All rights reserved.
//

#import <MessageUI/MessageUI.h>
#import "UIViewController+ReportInappropriate.h"

@interface UIViewController () <MFMailComposeViewControllerDelegate>

@end

@implementation UIViewController (ReportInappropriate)

- (void)makeReportWithEmailAddress:(NSString *)emailAddress emailBody:(NSString *)emailBody
{
    MFMailComposeViewController *vc = [[MFMailComposeViewController alloc] init];
    [vc setMailComposeDelegate:self];
    [vc setSubject:[NSString stringWithFormat:@"%@ - Report Inappropriate", [self _getAppName]]];
    [vc setToRecipients:[[NSArray alloc] initWithObjects:emailAddress, nil]];
    [vc setMessageBody:emailBody isHTML:NO];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)mailComposeController:(MFMailComposeViewController *)controller
          didFinishWithResult:(MFMailComposeResult)result
                        error:(NSError *)error
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (NSString *)_getAppName
{
    NSBundle *bundle = [NSBundle mainBundle];
    NSDictionary *info = [bundle infoDictionary];
    return [info objectForKey:@"CFBundleDisplayName"];
}

@end