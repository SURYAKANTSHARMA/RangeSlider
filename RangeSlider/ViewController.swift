//
//  ViewController.swift
//  RangeSlider
//
//  Created by IOS Developer on 09/05/18.
//  Copyright © 2018 iOS Developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let rangeSlider = RangeSlider(frame: CGRect.zero)
    let minValue: Double = 0
    let maxValue: Double = 1000
    @IBOutlet weak var lowerValueLabel: UILabel!
    @IBOutlet weak var upperValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lowerValueLabel.text = "\(minValue)"
        upperValueLabel.text = "\(maxValue)"
        rangeSlider.minimumValue = minValue
        rangeSlider.maximumValue = maxValue
        rangeSlider.lowerValue = 0.0
        view.addSubview(rangeSlider)
        rangeSlider.addTarget(self, action: #selector(sliderValueChange(_:)), for: .valueChanged)
    }
    
    override func viewDidLayoutSubviews() {
        let margin: CGFloat = 20.0
        let width = view.bounds.width - 2.0 * margin
        rangeSlider.frame = CGRect(x: margin, y: margin + view.safeAreaInsets.top + 100,
                                   width: width, height: 31.0)
        
    }
    
    @objc func sliderValueChange(_ sender: RangeSlider) {
       //print("Range slider value changed: (\(rangeSlider.lowerValue) \(rangeSlider.upperValue))")
       lowerValueLabel.text = "\(Int(rangeSlider.lowerValue))"
       upperValueLabel.text = "\(Int(rangeSlider.upperValue))"
    }

}


