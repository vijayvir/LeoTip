#  Read Me : LeoToolTip 

It is used to make tooltip on any UIButton

![UIGif preferences pane](http://d.pr/i/rT4d+)



This class have following Modifier 

1.  `AddOn`: Add the view on which you have to show the back ground view 
     
 ```swift 
     leoAddOn(self.view) 
```

2.  `BackgroundColor`:modify  the color to the background     
  
 ```swift  
     .withBackgroundColor(.orange)      
```         

3.  `Shape`:Modify the shape to cirle, by default it is rectange  
  
 ```swift  
     .withShape(.circle)     
``` 

4.  `Alpha`:Modify the alpha of the  background e  
  
 ```swift  
     .withAlpha(0.7)    
```
 
5.  `Print`:Do some print thing in between 
  
 ```swift  
     .withPrint(){
        print("Some withBackgroundColor")
        }  
``` 
        
6.  `Self`:Get the LeoTipView in between of the builder function
  
 ```swift  
     . .withSelf(){ object in
     
     }
``` 

6.  `AddAnyView`: Add Any view in tipTool view
  
 ```swift  
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
  
8. `build`    This  will make the tip view on the target `(UIButton)`  with above modify builder and added views 

 ```swift 
         .build()
   
   ```
  



9.  `build`: This  will silent Result of call to 'withSomeFunction' is unused

  ```swift 
    .run()
  
  ```


## Note :  Special check for the addTarget 
  By default the view dismiss on tap gesture but if button is there, Please assign the target in your class so that you dismiss the view ,  on your conditions 
  to dissmiss view Use following funtion  `sender.leoHide()` of `UIButton`
  
  ```swift 
        
        .withAddAnyView{
        let someView = UIButton()
        someView.setTitle("Some Button target", for: .normal)
        someView.addTarget(self, action: #selector(ViewController.btnPressed), for: .touchUpInside)
        someView.backgroundColor = .blue
        return someView
        }
        
        
        @objc func btnPressed(sender:UIButton) {
        sender.leoHide()
        print("Do Some work here ")
        
        }
   
  ```

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
    


