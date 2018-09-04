//
//  ViewController2.swift
//  練習2
//
//  Created by 岸下和樹 on 2018/09/02.
//  Copyright © 2018年 岸下和樹. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    
    @IBAction func onPrev(_ sender: UIButton) {
        // 表示している画像の番号を1増やす
        dispImageNo += 1
        
        // 表示している画像の番号を元に画像を表示する
        displayImage()
    }
    
    
    @IBAction func onNext(_ sender: UIButton) {
        // 表示している画像の番号を1増やす
        dispImageNo += 1
        
        // 表示している画像の番号を元に画像を表示する
        displayImage()
    }
    
    /// 表示している画像の番号
    var dispImageNo = 0
    
    /// 表示している画像の番号を元に画像を表示する
    func displayImage() {
        
        // 画像の名前の配列
        let imageNameArray = [
            "写真1.jpeg",
            "写真2.jpeg",
            "写真3.jpeg",
            "写真4.jpeg",
            "写真5.jpeg",
            "写真6.ipeg",
            "写真7.jpeg",
            "写真8.jpeg",
            "写真9.lpeg",
            "写真10.jpeg",
            ]
        
        // 表示している画像の番号から名前を取り出し
        let name = imageNameArray[dispImageNo]
        
        // 画像を読み込み
        let image = UIImage(named: name)
        
        // Image Viewに読み込んだ画像をセット
        imageview.image = image
    }
    
    
    @IBOutlet weak var imageview: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        以下のコードでバンドルした画像ファイルを読み込み
        let image = UIImage(named: "写真1.jpeg")
//        Image Viewに画像を設定
        imageview.image = image
        

    }


  

}
