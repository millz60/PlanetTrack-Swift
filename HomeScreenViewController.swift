//
//  HomeScreenViewController.swift
//  PlanetTrack-Swift
//
//  Created by Matt Milner on 8/11/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

import UIKit

class HomeScreenViewController: UIViewController {
    

    @IBOutlet weak var buttonsTableView: UITableView!
    @IBOutlet weak var menuStackView: UIStackView!
    @IBOutlet weak var planetTrackLabel: UILabel!
    let planetsArray = ["mars","jupiter","saturn","earth","neptune","venus","mercury","uranus"]
    
    var planetImageView: UIImageView!
    var targetView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        planetImageView = UIImageView(frame: CGRect(x: (self.view.frame.size.width/3), y: (self.view.frame.size.height/2), width: 0, height: 0))
        planetImageView.image = UIImage(named: "earth")
        planetImageView.layer.zPosition = 9998
        planetImageView.alpha = 1
        
        self.view.addSubview(planetImageView)
        
        targetView = UIImageView(frame: CGRect(x: (self.view.frame.size.width/3)-140, y: (self.view.frame.size.height/2)-140, width: 280, height: 280))
        targetView.image = UIImage(named: "crosshairs2.png")
        targetView.backgroundColor = UIColor.clearColor()
        targetView.layer.zPosition = 9999
        targetView.layer.borderWidth = 0.5
        targetView.layer.borderColor = UIColor(red: 0.0/255.0, green: 255.0/255.0, blue: 0.0/255.0, alpha: 0.75).CGColor
        targetView.alpha = 0.0
        
        
        self.view.addSubview(targetView)

        flash2()
        let timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(flash), userInfo: nil, repeats: true)
        let timer2 = NSTimer.scheduledTimerWithTimeInterval(3.5, target: self, selector: #selector(flash2), userInfo: nil, repeats: true)

        
        self.menuStackView.alpha = 1.0

        animatePlanet()
        

        
        
    }
    
    func flash() {
        
        
        let randInt = Int(arc4random_uniform(7))
        
        UIView.animateWithDuration(3.5, animations: {
            self.planetImageView.frame = CGRect(x: (self.view.frame.size.width/3), y: (self.view.frame.size.height/2), width: 0, height: 0)
            self.planetImageView.alpha = 0.3


            }) { (g) in
                UIView.animateWithDuration(3.5, animations: {
                    self.planetImageView.image = UIImage(named: self.planetsArray[randInt])
                    self.planetImageView.alpha = 1.0
                    self.planetImageView.frame = CGRect(x: (self.view.frame.size.width/3)-75, y: (self.view.frame.size.height/2)-75, width: 150, height: 150)

                }) { (h) in
                    UIView.animateWithDuration(0.25, animations: {
                    }) { (x) in
                }
                

        }}
    }
    
    func flash2() {
        
        UIView.animateWithDuration(1.5, animations: {
            self.targetView.alpha = 1

            
        }) { (g) in
            UIView.animateWithDuration(0.25, animations: {
                self.targetView.alpha = 0.0
                
            }) { (h) in
            UIView.animateWithDuration(0.25, animations: {
                self.targetView.alpha = 1.0
            }) { (i) in
            UIView.animateWithDuration(1.5, animations: {
                self.targetView.alpha = 0.0
                })
        }
        
            }
    
        }
}
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func animatePlanet() {
        
        UIView.animateWithDuration(3.5, animations: {
            self.planetImageView.alpha = 1.0
            self.planetImageView.frame = CGRect(x:(self.view.frame.size.width/3)-100, y:(self.view.frame.size.height/2)-100, width:200, height: 200)

            }, completion: nil)
        
        
        
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let destination = segue.destinationViewController as! HomeScreenTabBarController
        
        if (segue.identifier == "PlanetTrackSegue"){
            
            destination.selectedIndex = 0
            
        } else if (segue.identifier == "SolarSystemFactsSegue"){
            
            destination.selectedIndex = 1
        
        } else if (segue.identifier == "ImageGallerySegue"){
        
            destination.selectedIndex = 2
    
        } else if (segue.identifier == "AboutSegue"){
            
            destination.selectedIndex = 3
        }
        
    }
    
    
    

}
