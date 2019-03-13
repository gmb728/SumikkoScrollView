//
//  ViewController.swift
//  Sumi
//
//  Created by Chang Sophia on 3/5/19.
//  Copyright © 2019 Chang Sophia. All rights reserved.
//

import UIKit
var newSumis: ArraySlice<String> = []

class ViewController: UIViewController {
   let sumis = ["jigsaw1", "jigsaw2", "jigsaw3"]
    @IBOutlet weak var chooseButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var bgImageView: UIImageView!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //  立體感與陰影
        bgImageView.layer.masksToBounds = false
        self.bgImageView.layer.shadowOffset = CGSize(width:-5,height:5)
        self.bgImageView.layer.shadowColor = UIColor.darkGray.cgColor
        self.bgImageView.layer.shadowOpacity = 0.8
    }
    
    @IBAction func chooseButtonPressed(_ sender: Any) {
        newSumis = self.sumis.shuffled()[0...2]
        imageView.image = UIImage(named: newSumis[0])
        if imageView.image == UIImage(named: "jigsaw1"){
            bgImageView.backgroundColor = UIColor.magenta
        } else if imageView.image == UIImage(named: "jigsaw2"){
            bgImageView.backgroundColor = UIColor.cyan
        } else if imageView.image == UIImage(named: "jigsaw3"){
            bgImageView.backgroundColor = UIColor.yellow
        }
        
    }


}
