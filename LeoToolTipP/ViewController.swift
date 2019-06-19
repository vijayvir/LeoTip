//
//  ViewController.swift
//  LeoToolTipP
//
//  Created by tecH on 19/06/19.
//  Copyright © 2019 vijayvir Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewNested: UIView!
    @IBOutlet weak var btnCenterDown: UIButton!
    @IBOutlet weak var btnSecond: UIButton!
    @IBOutlet weak var btnSample: UIButton!
    @IBOutlet weak var btnCenter: UIButton!
    @IBOutlet weak var btnLast: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    
       btnSample.leoAddOn(self.view , superView: btnSample.superview )
            .withBackgroundColor(.orange)
            .withPrint(){
                print("Some withBackgroundColor")
            }
           .withShape(.circle)
            .withPrint() {
                print("Some withShape ")
            }
            .withAlpha(1.0)
           
            .withAddAnyView{
                let someView = UIButton()
                someView.setTitle("Some Button target", for: .normal)
                someView.addTarget(self, action: #selector(ViewController.btnPressed), for: .touchUpInside)
                someView.backgroundColor = .blue
                return someView
        }.build().withSelf { (object) in
            object?.touchUpInside()
        }
        
       
        
        
        btnSecond.leoAddOn(self.view)
             .withBackgroundColor(.purple)
             .withAddAnyView{
                let someView = UILabel()
                someView.text = "First View"
                someView.backgroundColor = .red
                return someView
             }
            .withAddAnyView{
                let someView = UILabel()
                someView.text = "Seond view"
                someView.backgroundColor = .red
                return someView
            }
            .withAddAnyView{
                let someView = UILabel()
                someView.text = "Third View "
                someView.backgroundColor = .red
                return someView
            }
            .build().run()
        
        
        btnCenter.leoAddOn(self.view)
            .withBackgroundColor(.yellow)
            .withShape(.circle)
            .withAddAnyView{
                let someView = UILabel()
                someView.text = "btnCenter"
                someView.backgroundColor = .red
                return someView
            }
            .withAddAnyView{
                let someView = UILabel()
                someView.text = "Seond view"
                someView.backgroundColor = .red
                return someView
            }
            .withAddAnyView{
                let someView = UILabel()
                someView.text = "Third View "
                someView.backgroundColor = .red
                return someView
                
                
            } .withAddAnyView{
                let someView = UIButton()
                someView.setTitle("Some Button target", for: .normal)
                someView.addTarget(self, action: #selector(ViewController.btnPressed), for: .touchUpInside)
                someView.backgroundColor = .blue
                return someView
            }
            .build().run()
        
        btnCenterDown.leoAddOn(self.view)
            .withBackgroundColor(.green)
            .build().run()
        
        
        btnLast.leoAddOn(self.view)
            .withAlpha(0.3)
            .withBackgroundColor(.cyan)
            .build().run()
        
        
        
    }
    
    @objc func btnPressed(sender:UIButton) {
        sender.leoHide()
        print("Do Some work here ")
        
    }


}

