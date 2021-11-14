//
//  ViewController.swift
//  SampleCAGradientLayer
//
//  Created by Masaki on R 3/11/08.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var gradationView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientLayer = CAGradientLayer()
        let color1 = UIColor.red
        let color2 = UIColor.blue
        gradientLayer.colors = [color1.cgColor,color2.cgColor] //ここでグラデーションを構成する複数の色を設定する
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.0)
        gradientLayer.frame = gradationView.bounds //gradationViewにgradientLayerを当てはめる
        gradationView.layer.insertSublayer(gradientLayer, at: 0)
    }
}
