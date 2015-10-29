//
// Created by Taro Minowa on 10/29/15.
// Copyright (c) 2015 Higepon Taro Minowa. All rights reserved.
//

import UIKit
import MessageUI

extension UIViewController: MFMailComposeViewControllerDelegate {

    func makeReport(withEmail email: String, messageBody: String) {
        if MFMailComposeViewController.canSendMail() {
            let mc: MFMailComposeViewController = MFMailComposeViewController()

            mc.mailComposeDelegate = self
            mc.setSubject("\(self.getAppName()) - Report Inappropriate")
            mc.setToRecipients([email])
            mc.setMessageBody(messageBody, isHTML: false)
            self.presentViewController(mc, animated: true, completion: nil)
        } else {

        }
    }

    private func getAppName() -> String {
        if let info = NSBundle.mainBundle().infoDictionary {
            if let appName = info["CFBundleName"] as? String {
                return appName
            }
        }
        return ""
    }

    public func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
}
