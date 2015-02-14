//
//  TutorialViewController.swift
//  Week 2 Carousel
//
//  Created by Anuj Verma on 2/12/15.
//  Copyright (c) 2015 Anuj Verma. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var tutorialScrollView: UIScrollView!
    @IBOutlet weak var tutorialImageView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var takeCarouselSpinImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tutorialScrollView.contentSize.width = 1280.0
        tutorialScrollView.delegate = self
        takeCarouselSpinImage.alpha = 0
        
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
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        println("hi")
        
        var page : Int = Int(round(tutorialScrollView.contentOffset.x / 320))
        println(page)
        println(tutorialScrollView.contentOffset.x)
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        
        if (page == 3) {
            delay(0.5, { () -> () in
                UIView.animateWithDuration(0.5, animations: { () -> Void in
                    self.takeCarouselSpinImage.alpha = 1.0
                })
            })
            
        } else {
            UIView.animateWithDuration(0.5, animations: { () -> Void in
                self.takeCarouselSpinImage.alpha = 0.0
            })

        }
    }

}
