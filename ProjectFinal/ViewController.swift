//
//  ViewController.swift
//  ProjectFinal
//
//  Created by SWUCOMPUTER on 14/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate{

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //delegate method
        textField.resignFirstResponder()
        return true }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return SongtitleArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return SongtitleArray[row]
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSongView" {
            let destVC = segue.destination as! SongViewController
            let infoofsong: String! = SongtitleArray[songListPicker.selectedRow(inComponent: 0)]
            destVC.title = infoofsong
            var songInfoString:String = "가수는 "
                songInfoString += singerTextField.text! + " 이고 \n 제목은 "
                songInfoString += SongtitleArray[songListPicker.selectedRow(inComponent: 0)] + " 입니다."
            destVC.info = songInfoString
            
            let songTitleInfo: String = SongtitleArray[songListPicker.selectedRow(inComponent: 0)]
            let songTitleInfo2 = songListPicker.selectedRow(inComponent: 0)
            destVC.titleinfo = songTitleInfo
            destVC.titleinfo2 = songTitleInfo2
            
        }
    }
    
    
    @IBOutlet var smallIndicator: UIActivityIndicatorView!
    @IBOutlet var noticeView: UIView!
    @IBOutlet var noticeLabel: UILabel!
    @IBOutlet var songListView: UIView!
    @IBOutlet var singerTextField: UITextField!
    
    @IBAction func searchSongList(_ sender: UIButton) {
        if(singerTextField.text == "ariana" || singerTextField.text == "arianagrande" || singerTextField.text == "아리아나" ||
            singerTextField.text == "아리아나그란데" )
        {
            songListView.isHidden = false
            noticeView.isHidden = true
        }
        else{
            noticeLabel.text = "4월 16일이후에 업데이트 예정입니다.\n 양해 부탁드립니다."
            smallIndicator.startAnimating()
            songListView.isHidden = true
            noticeView.isHidden = false
        }
    
    }
    
    @IBAction func goNextView(_ sender: UIButton) {
    }
    
    @IBOutlet var songListPicker: UIPickerView!
    
    let SongtitleArray:Array<String> = ["Faith(with Stevie Wonder)","No Tears Left To Cry","Greedy","Right There",
                                        "Beauty and The Beast"]
    
    

    
    override func viewDidLoad() {
         songListView.isHidden = true
         noticeView.isHidden = true
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

