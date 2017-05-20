//
//  ViewController.swift
//  SlideshowApp
//
//  Created by NAOYUKI IWAMOTO on H29/05/07.
//  Copyright © 平成29年 naoyuki.iwamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    var imageArray = [UIImage]()
    var timer: Timer? = nil
    var updateCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image0 = UIImage(named: "0.jpg")
        imageView.image = image0
        
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
    
    @IBAction func startstopButton(_ sender: Any) {
        
        
        if (timer == nil) {
            
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateImage), userInfo: nil, repeats: true)
            
        } else {
            
            timer?.invalidate()
            timer = nil
        }
    }
    
    
    @IBAction func nextButton(_ sender: Any) {
        
        if (timer == nil) {
            
            if (updateCount == 4) {
                
                updateCount = 0
                imageView.image = imageArray[updateCount]
                
            } else {
            
                updateCount = updateCount + 1
                imageView.image = imageArray[updateCount]
                
            }
            
        } else {
            
            
        }
    
    }
    
    @IBAction func backButton(_ sender: Any) {
        
        if (timer == nil) {
            
            if (updateCount == 0) {
                
                updateCount = 4
                imageView.image = imageArray[updateCount]
            } else {
                
                updateCount = updateCount - 1
                imageView.image = imageArray[updateCount]
            }
        } else {
            
        }
    }
    
    func updateImage() {
        
        if(updateCount == 4) {
            
            updateCount = 0
            imageView.image = imageArray[updateCount]
            
        } else {

            updateCount = updateCount + 1
            imageView.image = imageArray[updateCount]
        }
        

    }
    
    @IBAction func nextPage(_ sender: Any) {
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let extendViewController:extendViewController = segue.destination as! extendViewController
        extendViewController.updateCount = updateCount
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
