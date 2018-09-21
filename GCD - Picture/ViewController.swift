//
//  ViewController.swift
//  GCD - Picture
//
//  Created by anhxa100 on 9/20/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Outlet Image
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    
    //MARK: array Image link
    var urls: [NSURL] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        urls = [NSURL(string: "https://d1u5p3l4wpay3k.cloudfront.net/dota2_gamepedia/thumb/6/67/Ancient_Apparition_icon.png/220px-Ancient_Apparition_icon.png?version=38b1af8a9bfa13c9fe1e4d81212f460a")!,
                NSURL(string: "https://d1u5p3l4wpay3k.cloudfront.net/dota2_gamepedia/thumb/c/c3/Bane_icon.png/220px-Bane_icon.png?version=c93accdcfd4c9f898ca1dda6e1a92be7")!,
                NSURL(string: "https://d1u5p3l4wpay3k.cloudfront.net/dota2_gamepedia/thumb/f/f2/Batrider_icon.png/220px-Batrider_icon.png?version=346f0b6ac1ae6b54b43314dbe2778194")!,
                NSURL(string: "https://d1u5p3l4wpay3k.cloudfront.net/dota2_gamepedia/thumb/2/27/Crystal_Maiden_icon.png/220px-Crystal_Maiden_icon.png?version=a00d5010bc15832e8e3e75791c3891f4")!,
                NSURL(string: "https://d1u5p3l4wpay3k.cloudfront.net/dota2_gamepedia/thumb/2/27/Crystal_Maiden_icon.png/220px-Crystal_Maiden_icon.png?version=a00d5010bc15832e8e3e75791c3891f4")!
        ]
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        let imageUrl1: URL = urls[0] as URL
        let imageUrl2: URL = urls[1] as URL
        let imageUrl3: URL = urls[2] as URL
        let imageUrl4: URL = urls[3] as URL
        
        DispatchQueue.global(qos: .userInitiated).async {
            //MARK: Image
            if  let imageData1: NSData = NSData(contentsOf: imageUrl1),
                let imageData2: NSData = NSData(contentsOf: imageUrl2),
                let imageData3: NSData = NSData(contentsOf: imageUrl3),
                let imageData4: NSData = NSData(contentsOf: imageUrl4) {
                
                let img1 = UIImage(data: imageData1 as Data)
                let img2 = UIImage(data: imageData2 as Data)
                let img3 = UIImage(data: imageData3 as Data)
                let img4 = UIImage(data: imageData4 as Data)
                
                DispatchQueue.main.async {
                    self.image1.image = img1
                    self.image2.image = img2
                    self.image3.image = img3
                    self.image4.image = img4
                    //MARK: checker
                    //                    print(img1)
                    //                    print(img2)
                    //                    print(img3)
                    //                    print(img4)
                    
                    self.image1.contentMode = UIView.ContentMode.scaleToFill
                    self.image2.contentMode = UIView.ContentMode.scaleToFill
                    self.image3.contentMode = UIView.ContentMode.scaleToFill
                    self.image4.contentMode = UIView.ContentMode.scaleToFill
                    
                    self.view.addSubview(self.image1)
                    self.view.addSubview(self.image2)
                    self.view.addSubview(self.image3)
                    self.view.addSubview(self.image4)
                }
            }
            
        }
        
    }
    
}

