//
//  ViewController.swift
//  WaterMarkDemo
//
//  Created by Introtuce on 17/09/19.
//  Copyright © 2019 Introtuce. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    let logo = UIImage(named: "nexme")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let image = UIImage(named: "bgimg") else {
            fatalError("No Image found")
        }
        
        put(bg: image)
    }
    
    
    
    func put(bg: UIImage){
        
        guard let wt=logo else{
            print("No logo found")
            return
            
        }
        let backgroundImage = bg
        let watermarkImage = wt
        
        UIGraphicsBeginImageContextWithOptions(backgroundImage.size, false, 0.0)
        print("image size \(imageView.bounds.width) width \(imageView.bounds.height) height")
        
      
        let y = backgroundImage.size.height - 100
        let x = backgroundImage.size.width - 150
        backgroundImage.draw(in: CGRect(x: 0.0, y: 0.0, width: backgroundImage.size.width, height: backgroundImage.size.height))
        watermarkImage.draw(in: CGRect(x: x, y: y, width: 100, height: 20))
        
        let result = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.imageView.image = result
        
        
        
    }
    
    


}

