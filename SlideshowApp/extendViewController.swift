//
//  extendViewController.swift
//  SlideshowApp
//
//  Created by NAOYUKI IWAMOTO on H29/05/20.
//  Copyright © 平成29年 naoyuki.iwamoto. All rights reserved.
//

import UIKit

class extendViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    var imageArray = [UIImage]()
    var timer: Timer? = nil
    var updateCount = 0

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let image0 = UIImage(named: "0.jpg")
        let image1 = UIImage(named: "1.jpg")
        let image2 = UIImage(named: "2.jpg")
        let image3 = UIImage(named: "3.jpg")
        let image4 = UIImage(named: "4.jpg")
        imageArray = [image0!, image1!, image2!, image3!, image4!]
        imageView.image = imageArray[updateCount]
        
    }
    
    @IBAction func back(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
