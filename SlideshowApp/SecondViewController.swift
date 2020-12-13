//
//  SecondViewController.swift
//  SlideshowApp
//
//  Created by 田中翔悟 on 2020/12/08.
//  Copyright © 2020 shogo.tanaka. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var image : UIImage!
    
    @IBOutlet weak var imageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView2.image = image

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
