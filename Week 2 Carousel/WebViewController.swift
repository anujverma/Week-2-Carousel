//
//  WebViewController.swift
//  Week 2 Carousel
//
//  Created by Anuj Verma on 2/13/15.
//  Copyright (c) 2015 Anuj Verma. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    @IBOutlet weak var termsWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let url = NSURL(string: "https://www.dropbox.com/terms?mobile=1")
        let request = NSURLRequest(URL: url!)
        termsWebView.loadRequest(request)
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

    @IBAction func dismissWebViewPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)

    }
}
