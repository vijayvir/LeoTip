//
//  LeoTootTip.swift
//  LeoToolTipP
//
//  Created by tecH on 19/06/19.
//  Copyright © 2019 vijayvir Singh. All rights reserved.
//

import Foundation
import UIKit
protocol LeoToolTipable where Self: UIButton  {
    
   func leoAddOn(_ view :  UIView , superView : UIView? ) -> LeoTipView
    
}
extension LeoToolTipable where Self: UIButton  {
}
final class LeoTipView : UIView {
    
    enum Position {
        case topNavigation
        case topSecondary
        case center
        case centerSecondary
        case bottom
    }
    
    
    enum TipShape {
        case rectangle
        case  circle
    }
    
    private var positionY : Position? = nil
    private var targetFrame : CGRect = .zero
    private var shape : TipShape = .rectangle
    private let shapelayer : CAShapeLayer = CAShapeLayer()
    private var  layerBackgroundColor : UIColor = .blue
    private var layerBackgroundAlpa : CGFloat = 0.5
    private var topAnchorConstraint : CGFloat = 44
    private var  elements : [UIView] = []
    private var automaticPositioning : Bool? = nil
    private var closureShouldShow : (() -> Bool)?
     private var scale : CGFloat = 1
    private var isOnce : (Bool , String) = (false , "")
    
    
    init(frame: CGRect , targetframe :CGRect  ) {
        super.init(frame: frame)
        self.targetFrame = targetframe
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func handleTap() {
        shapelayer.isHidden = true
        self.isHidden = true
        
    }
    
    @objc  func touchUpInside() {
        
        
        if  self.isOnce.0 {
            
            UserDefaults.standard.leoTipOnce(id: self.isOnce.1){
                
                self.operation()
            }
            
        }else {
            
            operation()
            
        }
    }
    
    func operation() {
        if closureShouldShow != nil {
            if let some =  closureShouldShow?() {
                if some {
                    self.isHidden = false
                    shapelayer.fillColor = layerBackgroundColor.withAlphaComponent(layerBackgroundAlpa).cgColor
                    shapelayer.isHidden = false
                }
            }
        }else {
            self.isHidden = false
            shapelayer.fillColor = layerBackgroundColor.withAlphaComponent(layerBackgroundAlpa).cgColor //
            shapelayer.isHidden = false
        }
    }
    
    private func draw() {
        
        
        self.backgroundColor = .clear
        
        var isAddGesture = true
        
        for object in elements {
            
            if object is UIButton {
                isAddGesture = false
                break
            }
            
        }
        
        if isAddGesture {
            let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
            tap.delegate = self
            addGestureRecognizer(tap)
        }
        
        self.isOpaque = true
        
        // self.layer.sublayers?.removeAll()
        let  superFrame  : CGRect = self.bounds
        
        var  frameTarget : CGRect = targetFrame
        
        
        if scale > 1 {
            frameTarget = CGRect(x: targetFrame.origin.x + targetFrame.size.width / 2  - ((targetFrame.size.width / 2 ) * scale    ),
                                 y: targetFrame.origin.y + targetFrame.size.width / 2  - ((targetFrame.size.height / 2) * scale     ),
                                 width: targetFrame.width *  scale ,
                                 height: targetFrame.height *  scale )
        }
        
        
        let path = CGMutablePath()
        
        if shape == .rectangle {
            path.addRect(frameTarget)
        } else if shape == .circle {
            path.addEllipse(in: frameTarget)
        }
        path.addRect(superFrame)
        shapelayer.path = path
        self.clipsToBounds  = true
        shapelayer.fillColor = layerBackgroundColor.withAlphaComponent(layerBackgroundAlpa).cgColor //
        
        shapelayer.fillRule = .evenOdd
        
        self.layer.addSublayer(shapelayer)
        shapelayer.isHidden = true
        
        let stackview = UIStackView(frame: self.bounds)
        stackview.backgroundColor = .brown
        stackview.axis = .vertical
        stackview.distribution =  .fill
        stackview.alignment = .leading
        stackview.spacing = 10
        stackview.isOpaque = true
        
        for object in elements {
            stackview.addArrangedSubview(object)
        }
        
        self.addSubview(stackview)
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.leadingAnchor.constraint(equalTo: self.leadingAnchor ,constant: 15).isActive = true
        stackview.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -15).isActive = true
        stackview.topAnchor.constraint(equalTo: self.topAnchor ,constant: topAnchorConstraint).isActive = true
        
        
    }
}

extension LeoTipView: UIGestureRecognizerDelegate {
    
    public override func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
}
// MARK: Builder Patteren
extension LeoTipView {
    
    public final func build() -> LeoTipView  {
       // print("On frame " ,"", frame.minY , frame.midY , frame.maxY)
        
       // print("\t On targetFrame " ,"", targetFrame.minY , targetFrame.midY , targetFrame.maxY)
        
        if positionY == nil {
            
            if automaticPositioning ?? true  {
                if targetFrame.maxY < frame.midY {
                    topAnchorConstraint = frame.midY
                }else if  targetFrame.maxY  > frame.midY {
                    topAnchorConstraint = 44
                }else if  targetFrame.maxY  > frame.midY {
                    topAnchorConstraint = 44
                }else  {
                    topAnchorConstraint = 44
                }
            } else {
                
            }
            
            
            
        } else if positionY != nil {
            
            switch positionY! {
                
            case .topNavigation:
                topAnchorConstraint = 44
            case .topSecondary:
                topAnchorConstraint = frame.midY - (frame.midY/2)
            case .center:
                topAnchorConstraint = frame.midY
            case .centerSecondary:
                topAnchorConstraint = frame.midY + (frame.midY/2)
            case .bottom:
                topAnchorConstraint = 44
                
            }
            
        }
        
        //   print(targetFrame , "_______ ",  self.frame , self.bounds )
        draw()
        return self
    }
    
    
    
    
    final   public  func withTopAnchorConstraint(_  value : CGFloat) -> LeoTipView{
        self.automaticPositioning = false
        self.topAnchorConstraint = value
        
        return self
        
    }
    
    
    final    public  func withAlpha(_  value : CGFloat) -> LeoTipView{
        
        self.layerBackgroundAlpa = value
        
        return self
        
    }
    
    final   public  func withBackgroundColor(_  color : UIColor) -> LeoTipView{
        self.layerBackgroundColor = color
        return self
    }
    final    public  func withPositionY(_  position : Position) -> LeoTipView{
        
        self.positionY = position
        
        return self
        
    }
    
    final  public  func withAutomaticPositioning(_  value : Bool) -> LeoTipView{
        
        self.automaticPositioning = value
        return self
        
    }
    
    final   public  func withShape(_  shape : TipShape) -> LeoTipView{
        self.shape = shape
        return self
        
    }
    
    final  public func withAddAnyView ( callback : (()-> UIView)? = nil ) -> LeoTipView {
        if let view = callback?() {
            elements.append(view)
        }
        return self
    }
    final   func withPrint(_ callback : (()-> Void)? = nil ) -> LeoTipView  {
        callback?()
        return self
    }
    public  func withScale(_  scale : CGFloat) -> LeoTipView{
        self.scale = scale
        return self
        
    }
    final   public  func withIsOnce(_  shape : Bool , id : String = UUID().uuidString) -> LeoTipView{
        self.isOnce = (shape , id)
        return self
        
    }
    
    
    final  func withShouldShow(_ value : @escaping (() -> Bool) ) -> LeoTipView {
        closureShouldShow = value
        return self
    }
    
    final  func withSelf(_ callback : ((LeoTipView?)-> Void)? = nil ) -> LeoTipView  {
        callback?(self)
        return self
    }
    func run() {
        
    }
    
}




func lastViewUpto(_ view :  UIView ,  target : UIView  ) -> CGRect {
    
    if target.superview == view {
        return CGRect(origin: CGPoint(x: view.convert(target.frame ,from:target).origin.x,
                                      y: view.convert(target.frame ,from:target).origin.y),
                      size:  view.convert(target.frame ,from:target).size)
        
    }
    
    if target.superview != nil {
        
        let some =   target.superview!.convert(target.frame ,from:target)
        
        let newGroup = target.superview!
        newGroup.frame = CGRect(x: some.minX, y: some.minY, width: some.width, height: some.height)
        
        return lastViewUpto(view, target: newGroup )
    }
    
    return target.frame
    
}

extension UIButton : LeoToolTipable  {
    
    
    
    final func  leoAddOn(_ view :  UIView  , superView : UIView? = nil) -> LeoTipView {
        
        let frameconvert = view.convert(self.frame ,from:superView)
        let backGroundView = LeoTipView(frame: view.bounds, targetframe: frameconvert)
        backGroundView.isHidden = true
        
        view.addSubview(backGroundView)
        addTarget(backGroundView, action:#selector(LeoTipView.touchUpInside), for: .touchUpInside)
        return backGroundView
    }
    final   func leoHide(){
        if self.superview?.superview is LeoTipView {
            self.superview?.superview?.isHidden  = true
        }
    }
}
extension UserDefaults {
    
    final func leoTipOnce( id : String ,  _ callBack : (()->Void)? = nil  ) {
        
        if  UserDefaults.standard.bool(forKey:id) == false {
            UserDefaults.standard.set(true, forKey: id)
            callBack?()
        }
        
    }
    
}



