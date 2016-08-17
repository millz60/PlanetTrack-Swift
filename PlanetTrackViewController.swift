//
//  PlanetTrackViewController.swift
//  PlanetTrack-Swift
//
//  Created by Matt Milner on 8/13/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

import UIKit

class PlanetTrackViewController: UIViewController {
    
    @IBOutlet weak var planetsDisplayText: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var unitOfMeasurementLabel: UIButton!
    @IBOutlet weak var sunButton: UIButton!
    @IBOutlet weak var mercuryButton: UIButton!
    @IBOutlet weak var venusButton: UIButton!
    @IBOutlet weak var earthButton: UIButton!
    @IBOutlet weak var marsButton: UIButton!
    @IBOutlet weak var jupiterButton: UIButton!
    @IBOutlet weak var saturnButton: UIButton!
    @IBOutlet weak var uranusButton: UIButton!
    @IBOutlet weak var neptuneButton: UIButton!
    @IBOutlet weak var leftSelectedPlanet: UIButton!
    @IBOutlet weak var rightSelectedPlanet: UIButton!
    
    var leftPlanet:  String!
    var rightPlanet: String?
    var leftSelected = true
    var selectedPlanet: String!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "PlanetTrack"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func leftPlanetSelected() {
    
        self.leftSelected = true

//        self.planetsDisplayText.text = "\(self.leftPlanet.capitalizedString) to \(self.rightPlanet?.capitalizedString)"
    }
    
    // self.leftSelectedPlanet.setImage(UIImage(named: "neptune")!, forState: .Normal)
    
    @IBAction func rightPlanetSelected() {
     
        self.leftSelected = false
        
    }
    
    @IBAction func planetChosen(sender: AnyObject) {

        let planetNames = ["Sun","Mercury","Venus","Earth","Mars","Jupiter","Saturn","Uranus","Neptune"]
        
        let planetSent = sender as! UIButton
        
        if(self.leftSelected){
            
            
            self.leftSelectedPlanet.setImage(UIImage(named: planetSent.titleLabel!.text!.lowercaseString), forState: .Normal)
            self.leftSelectedPlanet.setTitle(planetSent.titleLabel!.text!, forState: .Normal)
            self.planetsDisplayText.text = "\(leftSelectedPlanet.titleLabel!.text!) to \(rightSelectedPlanet.titleLabel!.text!)"
            
        } else {
            
            self.rightSelectedPlanet.setTitle(planetSent.titleLabel!.text!, forState: .Normal)
            self.rightSelectedPlanet.setImage(UIImage(named: planetSent.titleLabel!.text!.lowercaseString), forState: .Normal)
            self.planetsDisplayText.text = "\(leftSelectedPlanet.titleLabel!.text!) to \(rightSelectedPlanet.titleLabel!.text!)"

            
        }
        
    }
    
    @IBAction func changeUnits(sender: AnyObject) {
        
        let buttonName = sender as! UIButton
        
        // Do conversions here
        
        print(buttonName.titleLabel!.text!)
        
        if (buttonName.titleLabel!.text! == "Miles ➪")  {
            self.unitOfMeasurementLabel.setTitle("Kilometers ➪", forState: .Normal)
            
            //  "927,846,334.13341690" <- earth to jupiter
            // 4348761326.28964500 <- mars to neptune
            
            //"908,702,761.99447730" <- mars to jupuiter
            
            self.distanceLabel.text =  "908,702,761.99447730"
            
        } else if(buttonName.titleLabel!.text! == "Kilometers ➪"){
            self.unitOfMeasurementLabel.setTitle("Miles ➪", forState: .Normal)
            self.distanceLabel.text = "2,702,195,009.89227129"
            
        }
        
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
