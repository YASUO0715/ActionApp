//
//  ViewController.swift
//  ActionApp
//
//  Created by Yasuo Niihori on 2021/10/31.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var charaImage: UIImageView!
    
    var imageArrayAttack : Array<UIImage> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        while let attackImage = UIImage(named: "attak\(imageArrayAttack.count+1)") {
                    imageArrayAttack.append(attackImage)
                }
    }

    @IBAction func attackBtn(_ sender: Any) {
        charaImage.animationImages = imageArrayAttack
                // 1.5秒間隔
                charaImage.animationDuration = 0.5
                // 1回繰り返し
                charaImage.animationRepeatCount = 1
                // アニメーションを開始
                charaImage.startAnimating()
    }
}

