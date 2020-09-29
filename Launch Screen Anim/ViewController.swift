//
//  ViewController.swift
//  Launch Screen Anim
//
//  Created by admin on 30/03/2020.
//  Copyright © 2020 AM Kirsch. All rights reserved.
//

import UIKit
import SwiftyGif

class ViewController: UIViewController {

    @IBOutlet weak var newtonGifImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
    }
    
   
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

         do {
            let gif = try UIImage( gifName: "newtons_cradle.gif")
            let gifImageView =  UIImageView( gifImage: gif, loopCount: 3)
            self.view.addSubview(gifImageView)
            gifImageView.translatesAutoresizingMaskIntoConstraints = false
            gifImageView.frame = self.view.frame
           } catch {
               print(error)
           }
    }

}

