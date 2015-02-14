//
//  IntroViewController.swift
//  Week 2 Carousel
//
//  Created by Anuj Verma on 2/12/15.
//  Copyright (c) 2015 Anuj Verma. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var introScrollView: UIScrollView!
    @IBOutlet weak var introImageView: UIImageView!
    
    @IBOutlet weak var tile1View: UIImageView!
    @IBOutlet weak var tile2View: UIImageView!
    @IBOutlet weak var tile3View: UIImageView!
    @IBOutlet weak var tile4View: UIImageView!
    @IBOutlet weak var tile5View: UIImageView!
    @IBOutlet weak var tile6View: UIImageView!
    
    var yOffsets : [Float] = [-285, -240, -415, -408, -480, -500]
    var xOffsets : [Float] = [-30, 75, -66, 10, -200, -15]
    var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    var rotations : [Float] = [-10, -10, 10, 10, 10, -10]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        introScrollView.contentSize = introImageView.image!.size
        introScrollView.delegate = self
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
    
    func scrollViewDidScroll(scrollView: UIScrollView!) {
        var offset = Float(introScrollView.contentOffset.y)
        
        // content offset: 0 -> 568
        // x offset: -30 -> 0
        // y offset -285 -> 0
        
        // tile 1 //

        var tx1 = convertValue(offset, 0, 568, xOffsets[0], 0)
        var ty1 = convertValue(offset, 0, 568, yOffsets[0], 0)
        var scale1 = convertValue(offset, 0, 568, scales[0], 1)
        var rotate1 = convertValue(offset, 0, 568, rotations[0], 0)
        
        tile1View.transform = CGAffineTransformMakeTranslation(CGFloat(tx1), CGFloat(ty1))
        tile1View.transform = CGAffineTransformScale(tile1View.transform, CGFloat(scale1), CGFloat(scale1))
        tile1View.transform = CGAffineTransformRotate(tile1View.transform, CGFloat(Double(rotate1) * M_PI / 180))
        
        // tile 2 //
        
        var tx2 = convertValue(offset, 0, 568, xOffsets[1], 0)
        var ty2 = convertValue(offset, 0, 568, yOffsets[1], 0)
        var scale2 = convertValue(offset, 0, 568, scales[1], 1)
        var rotate2 = convertValue(offset, 0, 568, rotations[1], 0)
        
        tile2View.transform = CGAffineTransformMakeTranslation(CGFloat(tx2), CGFloat(ty2))
        tile2View.transform = CGAffineTransformScale(tile2View.transform, CGFloat(scale2), CGFloat(scale2))
        tile2View.transform = CGAffineTransformRotate(tile2View.transform, CGFloat(Double(rotate2) * M_PI / 180))
        
        // tile 3 //
        
        var tx3 = convertValue(offset, 0, 568, xOffsets[2], 0)
        var ty3 = convertValue(offset, 0, 568, yOffsets[2], 0)
        var scale3 = convertValue(offset, 0, 568, scales[2], 1)
        var rotate3 = convertValue(offset, 0, 568, rotations[2], 0)
        
        tile3View.transform = CGAffineTransformMakeTranslation(CGFloat(tx3), CGFloat(ty3))
        tile3View.transform = CGAffineTransformScale(tile3View.transform, CGFloat(scale3), CGFloat(scale3))
        tile3View.transform = CGAffineTransformRotate(tile3View.transform, CGFloat(Double(rotate3) * M_PI / 180))
        
        // tile 4 //
        
        var tx4 = convertValue(offset, 0, 568, xOffsets[3], 0)
        var ty4 = convertValue(offset, 0, 568, yOffsets[3], 0)
        var scale4 = convertValue(offset, 0, 568, scales[3], 1)
        var rotate4 = convertValue(offset, 0, 568, rotations[3], 0)
        
        tile4View.transform = CGAffineTransformMakeTranslation(CGFloat(tx4), CGFloat(ty4))
        tile4View.transform = CGAffineTransformScale(tile4View.transform, CGFloat(scale4), CGFloat(scale4))
        tile4View.transform = CGAffineTransformRotate(tile4View.transform, CGFloat(Double(rotate4) * M_PI / 180))
        
        // tile 5 //
        
        var tx5 = convertValue(offset, 0, 568, xOffsets[4], 0)
        var ty5 = convertValue(offset, 0, 568, yOffsets[4], 0)
        var scale5 = convertValue(offset, 0, 568, scales[4], 1)
        var rotate5 = convertValue(offset, 0, 568, rotations[4], 0)
        
        tile5View.transform = CGAffineTransformMakeTranslation(CGFloat(tx5), CGFloat(ty5))
        tile5View.transform = CGAffineTransformScale(tile5View.transform, CGFloat(scale5), CGFloat(scale5))
        tile5View.transform = CGAffineTransformRotate(tile5View.transform, CGFloat(Double(rotate5) * M_PI / 180))
        
        // tile 6 //
        
        var tx6 = convertValue(offset, 0, 568, xOffsets[5], 0)
        var ty6 = convertValue(offset, 0, 568, yOffsets[5], 0)
        var scale6 = convertValue(offset, 0, 568, scales[5], 1)
        var rotate6 = convertValue(offset, 0, 568, rotations[5], 0)
    
        tile6View.transform = CGAffineTransformMakeTranslation(CGFloat(tx6), CGFloat(ty6))
        tile6View.transform = CGAffineTransformScale(tile6View.transform, CGFloat(scale6), CGFloat(scale6))
        tile6View.transform = CGAffineTransformRotate(tile6View.transform, CGFloat(Double(rotate6) * M_PI / 180))
        
        println("Content offset: \(introScrollView.contentOffset.y)")
    }

}
