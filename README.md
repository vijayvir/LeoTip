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
8.  ```swift 
         .build()
    ```
  
  This  will make the tip view on the target (Button)  with above modify builder and added views 


8.  ```swift 
    .run()
    ```
This  will silent Result of call to 'withSomeFunction' is unused

     
     ## Example
     
     ```swift      
    
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
    .withPositionY(.topSecondary)
    
    
    .withAddAnyView{
    let someView = UIButton()
    someView.setTitle("Some Button target", for: .normal)
    someView.addTarget(self, action: #selector(ViewController.btnPressed), for: .touchUpInside)
    someView.backgroundColor = .blue
    return someView
    }.build().withSelf { (object) in
    object?.touchUpInside()
    }.run()
     ```
     


