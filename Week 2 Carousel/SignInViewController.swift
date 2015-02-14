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
    

    
    

}







