//
//  SongViewController.swift
//  ProjectFinal
//
//  Created by SWUCOMPUTER on 14/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class SongViewController: UIViewController {

    @IBOutlet var songImageView: UIImageView!
    @IBOutlet var songTitle: UILabel!
    
    //노래 재생을 위한 재생 아울렛 변수
    @IBOutlet var btnPlay: UIButton!
    @IBOutlet var btnPause: UIButton!
    
    
    
    var info:String?
    var titleinfo: String?
    var titleinfo2: Int?
    
    override func viewDidLoad() {
        
        let faithImage = UIImage(named: "faith.jpg")
        let notearsImage = UIImage(named: "notearslefttocry.jp2")
        let greedyImage = UIImage(named: "greedy.jpg")
        let rightthereImage = UIImage(named: "rightthere.png")
        let beautyandImage = UIImage(named: "beautyandthebeast.jpg")
 
        
        
        super.viewDidLoad()
        
        //두번째 뷰에서 가수와 곡정보 보여주기
        songTitle.text = info
        
        //사진 출력
        if(titleinfo2 == 0){songImageView.image = faithImage}
        if(titleinfo2 == 1){songImageView.image = notearsImage}
        if(titleinfo2 == 2){ songImageView.image = greedyImage}
        if(titleinfo2 == 3){songImageView.image = rightthereImage}
        if(titleinfo2 == 4){songImageView.image = beautyandImage}
        
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
