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
        
       btnSample.leoAddOn(self.view , superView: btnSample.superview ) // jhf
            .withBackgroundColor(.orange)
            .withPrint(){
                print("Some withBackgroundColor")
            }
            .withShape(.circle)
            .withAlpha(1.0)
        /*
             Set the position of the stackview
             Priority
             Highest -- .withPositionY(.topSecondary) Highest
                     --  .withAutomaticPositioning(false) ,
            It will take the topAnchor value by default its value is 44
                    --  .withTopAnchorConstraint(700)
             set the position.Y of the view with topAnchorConstraint if
                   1. the .withPositionY is not assign
                   2. and .withAutomaticPositioning(false)  is flase
        
        */
            .withTopAnchorConstraint(700)
            .withAutomaticPositioning(false)
            .withPositionY(.centerSecondary)
        
        
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
               
                return someView
            }
            .withAddAnyView{
                let someView = UILabel()
                someView.text = "Seond view"
            
                return someView
            }
            .withAddAnyView{
                let someView = UILabel()
                someView.text = "Third View "
               
                return someView
                
                
            } .withAddAnyView{
                let someView = UIButton()
                someView.setTitle(" Some Button target ", for: .normal)
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
            .withAddAnyView{
                let someView = UILabel()
                someView.text = "Seond view jg jadffdu fsdui uifds uifuids uih fiusdhiu fhiusdh iufhidu shfuis dhiuh fiudshiu "
                someView.numberOfLines = 0
                someView.backgroundColor = .red
                return someView
            }
            .withTopAnchorConstraint(200)
            .build()
            .withShouldShow({ () -> Bool in
           
                return true
                
            })
            
            .run()
        
        
        
    }
    
    @objc func btnPressed(sender:UIButton) {
        sender.leoHide()
        print("Do Some work here ")
        
    }


}

