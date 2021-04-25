//
//  ViewController.swift
//  week2
//
//  Created by Gülümser Aslan on 25/04/2021.
//  Copyright © 2021 Gülümser Aslan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var segmentedLabel: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var stepperLabel: UILabel!
    
    @IBOutlet weak var horizantalSlider: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        //DatePicker
        //let datePicker = UIDatePicker(frame: CGRect(x: 0, y: 500, width: 300, height: 200))
        //datePicker.datePickerMode = .time
        //datePicker.datePickerMode = .countDownTimer
        //datePicker.minuteInterval = 15
        //datePicker.countDownDuration = 60
        //view.addSubview(datePicker)
        
    }
    
    @IBAction func segmentChanged(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex {
               case 0:
                   segmentedLabel.text = "İlk Segment seçildi"
               case 1:
                   segmentedLabel.text = "İkinci Segment seçildi"
               default:
                   break
               }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        sliderLabel.text = Int(sender.value).description
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        stepperLabel.text = Int(sender.value).description
    }

}

