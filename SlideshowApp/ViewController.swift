//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 田中翔悟 on 2020/12/08.
//  Copyright © 2020 shogo.tanaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageIndex = 0
    let image = [UIImage(named:"0.png"),
                 UIImage(named:"1.png"),
                 UIImage(named:"2.png")]

    var timer:Timer!
    
    var counter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var backButtton: UIButton!
    @IBOutlet weak var playPauseButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // 進むボタン
    @IBAction func nextButton(_ sender: Any) {
        if imageIndex == 2{
            imageIndex = 0
        }else{
            imageIndex += 1
        }
        imageView.image = image[imageIndex]
    }
    
    // 戻るボタン
    @IBAction func backButton(_ sender: Any) {
        if imageIndex == 0{
            imageIndex = 2
        }else{
            imageIndex -= 1
        }
        imageView.image = image[imageIndex]
    }
    
    // 再生.停止ボタン
    @IBAction func playPauseButtton(_ sender: Any) {
        if self.timer != nil{
            playPauseButton.setTitle("再生",for:UIControl.State.normal)
            timer?.invalidate()
            timer = nil
            
            backButtton.isEnabled = true
            nextButton.isEnabled = true
            
        } else {
            playPauseButton.setTitle("停止",for:UIControl.State.normal)
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
            
            backButtton.isEnabled = false
            nextButton.isEnabled = false
            
        }
    }
    
    @objc func changeImage(_ timer:Timer){
        if imageIndex == 2{
            imageIndex = 0
        }else{
            imageIndex += 1
        }
        imageView.image = image[imageIndex]
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let secondViewController:SecondViewController = segue.destination as! SecondViewController
        
        secondViewController.image = image[imageIndex]
        
    }
    
    @IBAction func closeWindow(_ segue: UIStoryboardSegue) {
    }
    
    @IBAction func expansion(_ sender: Any) {
        
        if self.timer != nil{
            playPauseButton.setTitle("再生",for:UIControl.State.normal)
            timer?.invalidate()
            timer = nil
            
            backButtton.isEnabled = true
            nextButton.isEnabled = true
            
        }
        
    }
    
    
}


