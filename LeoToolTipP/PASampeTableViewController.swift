//
//  PASampeTableViewController.swift
//  LeoToolTipP
//
//  Created by tecH on 21/06/19.
//  Copyright © 2019 vijayvir Singh. All rights reserved.
//

import UIKit

class PASampeTableViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier1", for: indexPath) as! PaTableviewCell
        cell.configure(onView : self.view, parent: tableView)
         //Configure the cell...
        return cell
    }
}

class PaTableviewCell : UITableViewCell {
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    var someView : UIView?
    var parent : UIView?
    func configure( onView: UIView  , parent : UIView) {
        someView = onView
        // self.subviews[0].subviews[0].subviews[0].subviews[0].subviews[0]
        self.parent = parent
    
        


//
//        btn3.leoAddOn(onView)
//            .withBackgroundColor(.purple)
//            .withAddAnyView{
//                let someView = UILabel()
//                someView.text = "First View"
//                someView.backgroundColor = .red
//                return someView
//            }
//            .withAddAnyView{
//                let someView = UILabel()
//                someView.text = "Seond view"
//                someView.backgroundColor = .red
//                return someView
//            }
//            .withAddAnyView{
//                let someView = UILabel()
//                someView.text = "Third View "
//                someView.backgroundColor = .red
//                return someView
//            }
//            .build().run()
//
//
//        btn4.leoAddOn(onView)
//            .withBackgroundColor(.purple)
//            .withAddAnyView{
//                let someView = UILabel()
//                someView.text = "First View"
//                someView.backgroundColor = .red
//                return someView
//            }
//            .withAddAnyView{
//                let someView = UILabel()
//                someView.text = "Seond view"
//                someView.backgroundColor = .red
//                return someView
//            }
//            .withAddAnyView{
//                let someView = UILabel()
//                someView.text = "Third View "
//                someView.backgroundColor = .red
//                return someView
//            }
//            .build().run()
        
        
        
        
        
        
    }
    
    @IBAction func actionTap(_ sender: UIButton) {
        
       print("****************",self)
        btn1.leoAddOn(someView! ,  superView: self)
            .withBackgroundColor(.black)
            .withAlpha(0.5)
            .withAddAnyView{
                let someView = UILabel()
                someView.textColor =  .white
                someView.text = "First View eshrf hewiuh uirhuihe wui b efiuwbiu"
                someView.numberOfLines = 0
                someView.font = someView.font.withSize(25).withName(LeoFontNames.Chalkduster.chalkduster.rawValue)
                
                return someView
            }
            .withIsOnce(true  )
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
            .build()
            .withSelf({ (some) in
                some?.touchUpInside()
            })
            .run()
        
        
        
    }
    
}
