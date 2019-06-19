#  Read Me : LeoToolTip 

It is   used to make 

This class have following Modifier 

1.  ```swift  leoAddOn(self.view) ```  
       Add the view on which you have to show the back ground view 

2.  ```swift  .withBackgroundColor(.orange)   ``` 
        modify  the color to the background 
        
3.  ```swift .withShape(.circle) ```  
         modify the shape to cirle, by default it is rectange
         
4.  ```swift   withAlpha(0.7) ```
        modify the alpha of the  background 
        
5.  ```swift   .withPrint(){
        print("Some withBackgroundColor")
        }```
    ```
    Do some print thing in between 
     
6.  ``` swift   .withSelf(){ object in
     
     }
     ```
    Get the LeoTipView in between of the builder function
     
7.  ```swift 
        .withAddAnyView{
                let someView = UILabel()
                someView.text = "Third View "
                someView.backgroundColor = .red
                return someView} 
        .withAddAnyView{
            let someView = UIButton()
            someView.setTitle("Some Button target", for: .normal)
            someView.addTarget(self, action: #selector(self.btnPressed), for: .touchUpInside)
            someView.backgroundColor = .blue
            return someView
            }
    ```
8.  ```swift  build()  ```
     This  will make the tip view on the target (Button)  with above modify builder and added views 
     
     
     ## Sample  
     
     ```swift        btnCenter.leoAddOn(self.view)
     .withBackgroundColor(.yellow)
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
     .build()```



