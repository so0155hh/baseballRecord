//
//  BattingAverageController.swift
//  baseballRecord
//
//  Created by 桑原　望 on 2019/10/31.
//  Copyright © 2019 Swift-Beginners. All rights reserved.
//

import UIKit

class BattingAverageController: UIViewController {

    
    @IBOutlet weak var atBatsText: UITextField!
    
    @IBOutlet weak var numberOfHitsText: UITextField!
    
    @IBOutlet weak var battingAverageResult: UILabel!
    
    
    @IBAction func calculate(_ sender: Any) {
    
        let AtBats = Int(atBatsText.text!)
        let numberOfHits = Int(numberOfHitsText.text!)
        let result = (Double(numberOfHits!) / Double(AtBats!)) * 1000
        let average = Int(result)
        
        battingAverageResult.text = "." + String(format: "%03d" , average)
       
       // enum MyError: Error {
         // case blankAtBatsText
           // case blankNumberOfHitsText
            //case invalidNumber
        //}
        
    
    
        //  guard numberOfHitsText > atBatsText else {
                //    throw MyError.blankAtBatsText
      //  func blankErrors(_ int: Int) throws -> Int {
        //    guard atBatsText == "" else {
          //  throw MyError.blankAtBatsText
        //}
            //return int
          //  }
        //do {
          //  try 
            
        
    }      
            
            //func blankAtBats(atBatsText)
            
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.atBatsText.keyboardType = UIKeyboardType.numberPad

        self.numberOfHitsText.keyboardType = UIKeyboardType.numberPad
        // Do any additional setup after loading the view.
    }
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



