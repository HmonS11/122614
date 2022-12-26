//
//  ViewController.swift
//  PickerViewEx
//
//  Created by runnysun on 2022/10/11.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDataSource {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        picker.dataSource = self
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return 4
        } else {
            return 8
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forCompopenent component: Int )-> String? {
        return "Hello \(component), \(row)"
    }
    func pickerView (_pickerView:UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = "Hello \(component), \(row)"
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightforComponent component: Int )-> CGFloat{
        if component == 0 {
            return 50
        }
        func pickerView(_ pickerView: UIPickerView, widthForComponent conponent: Int)-> CGFloat {
            if component == 0{
                return 200
            }else {
                return 140
            }
        }
    }
    
    extension ViewController:UIPickerViewDataSource
