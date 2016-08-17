//
//  FullScreenImageViewController.swift
//  PlanetTrack-Swift
//
//  Created by Matt Milner on 8/17/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

import UIKit

class FullScreenImageViewController: UIViewController {
    
    @IBOutlet weak var fullScreenImage: UIImageView!
    var sentImage: UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.fullScreenImage.image = self.sentImage!
    
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

}
