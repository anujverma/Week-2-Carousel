//
//  SignInViewController.swift
//  Week 2 Carousel
//
//  Created by Anuj Verma on 2/12/15.
//  Copyright (c) 2015 Anuj Verma. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButtonView: UIView!
    var originalSignInButtonCenter: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        originalSignInButtonCenter = signInButtonView.center.y

        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func signinButtonDidPressed(sender: AnyObject) {
        
        if (emailTextField.text == "" || passwordTextField.text == "") {
        
        var alertView = UIAlertView(title: "Email Required", message: "Please enter your email address and/or password.", delegate: self, cancelButtonTitle: "OK")
        alertView.show()
        
        } else if (emailTextField.text == "verma.anuj@gmail.com" && passwordTextField.text == "password") {
            
            var alertView4 = UIAlertView(title: "Signing in...", message: "", delegate: self, cancelButtonTitle: nil)
            alertView4.show()
           
            
            delay(2.0, { () -> () in
                alertView4.dismissWithClickedButtonIndex(0, animated: true)
                self.performSegueWithIdentifier("signInSegue", sender: self)

                
            })
            
        } else {
            var alertView4 = UIAlertView(title: "Signing in...", message: "", delegate: self, cancelButtonTitle: nil)
            alertView4.show()
            delay(2.0, { () -> () in
                var alertView3 = UIAlertView(title: "Sign in failed", message: "Incorrect email or password", delegate: self, cancelButtonTitle: "OK")
                alertView3.show()
                alertView4.dismissWithClickedButtonIndex(0, animated: true)
                
            })
            
        }
        
    }
    

    
    @IBAction func signInBackButtonPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)

    }
    
    
    func keyboardWillShow(notification: NSNotification!) {
        
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(UInt(animationCurve << 16)), animations: {
            
            //Moving the login up just a little since the keyboard didn't overlap the view
            self.signInButtonView.center.y = self.signInButtonView.center.y - 70
            
            }, completion: nil)
        
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(UInt(animationCurve << 16)), animations: {
            
            // Brings the login back to where it was when we started
            self.signInButtonView.center.y = self.originalSignInButtonCenter
            }, completion: nil)
        
    }

}







