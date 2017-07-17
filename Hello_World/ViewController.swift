//
//  ViewController.swift
//  Hello_World
//
//  Created by Raphael Zaafrani on 7/5/17.
//  Copyright © 2017 Raphael Zaafrani. All rights reserved.
//

import UIKit

public extension UIView{
    func fadeIn(withDuration duration: TimeInterval = 5.0) {
        UIView.animate(withDuration: duration, animations: {
            self.alpha = 1.0
        })
    }
}
class ViewController: UIViewController {

    @IBOutlet var backGround: UIView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet var titleImage: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonAction(_ sender: AnyObject) {
        button.isHidden = true
        backGround.isHidden = false
        titleImage.alpha = 0
        titleImage.isHidden = false
        titleImage.fadeIn()
    }

}


