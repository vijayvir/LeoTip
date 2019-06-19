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
  
    func leoAddOn(_ view :  UIView ) -> LeoTipView
    
}
extension LeoToolTipable where Self: UIButton  {
}
class LeoTipView : UIView {
    
    enum Position {
        case top
        case center
        case bottom
    }
    
    
    enum TipShape {
       case rectangle
       case  circle
    }
    
    private var position : (Position ,  Position )? = nil
   private var targetFrame : CGRect = .zero
   private var shape : TipShape = .rectangle
   private   let shapelayer : CAShapeLayer = CAShapeLayer()
   private var  layerBackgroundColor : UIColor = .blue
   private var layerBackgroundAlpa : CGFloat = 0.5
    
    private var  elements : [UIView] = []
    
    
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
    self.isHidden = false
    shapelayer.fillColor = layerBackgroundColor.withAlphaComponent(0.5).cgColor //
        
    shapelayer.isHidden = false
    }
    
 
    
    private func draw() {
        
        
        self.backgroundColor = .clear
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        tap.delegate = self
        addGestureRecognizer(tap)
        // self.layer.sublayers?.removeAll()
        let  superFrame  : CGRect = self.bounds
        let  frame : CGRect = targetFrame
        let path = CGMutablePath()
        if shape == .rectangle {
            path.addRect(frame)
        } else if shape == .circle {
            path.addEllipse(in: frame)
        }
        path.addRect(superFrame)
        shapelayer.path = path
        self.clipsToBounds  = true
        shapelayer.fillColor = layerBackgroundColor.withAlphaComponent(0.5).cgColor //
        
        shapelayer.fillRule = .evenOdd
        self.alpha = 1
        self.layer.addSublayer(shapelayer)
        shapelayer.isHidden = true
        
         let stackview = UIStackView(frame: self.bounds)
        stackview.backgroundColor = .brown
        stackview.axis = .vertical
        stackview.distribution =  .fill
        stackview.alignment = .leading
        stackview.spacing = 10
        
        
        for object in elements {
            stackview.addArrangedSubview(object)
        }

        self.addSubview(stackview)
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.leadingAnchor.constraint(equalTo: self.leadingAnchor ,constant: 15).isActive = true
        stackview.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: 15).isActive = true
        stackview.topAnchor.constraint(equalTo: self.topAnchor ,constant: 15).isActive = true
        
        
    }
}

extension LeoTipView: UIGestureRecognizerDelegate {
    
    open override func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
}
// MARK: Builder Patteren
extension LeoTipView {
    
    
    
    public final func build() {
        
        print(targetFrame , "_______ ",  self.frame , self.bounds )
        
        draw()
    }

    public  func withAlpha(_  value : CGFloat) -> LeoTipView{
        
        self.layerBackgroundAlpa = value
        
        return self
        
    }
    
    public  func withBackgroundColor(_  color : UIColor) -> LeoTipView{
        self.layerBackgroundColor = color
        return self
    }
    public  func withBackgroundColor(_  position : (Position ,  Position )) -> LeoTipView{
        
        self.position = position
        
        return self
        
    }
    
    
    
    public  func withShape(_  shape : TipShape) -> LeoTipView{
        self.shape = shape
        return self
        
    }
    
    public func withAddView ( callback : (()-> UIView)? = nil ) -> LeoTipView {
        if let view = callback?() {
               elements.append(view)
        }
        return self
    }
    func withPrint(_ callback : (()-> Void)? = nil ) -> LeoTipView  {
        callback?()
        return self
    }
    
    func withSelf(_ callback : ((LeoTipView?)-> Void)? = nil ) -> LeoTipView  {
        callback?(self)
        return self
    }
    
}

extension UIButton : LeoToolTipable  {
    
     func leoAddOn(_ view :  UIView ) -> LeoTipView {
        let backGroundView = LeoTipView(frame: view.bounds, targetframe: self.frame)
        backGroundView.isHidden = true
        view.addSubview(backGroundView)
        addTarget(backGroundView, action:#selector(LeoTipView.touchUpInside), for: .touchUpInside)
        return backGroundView
    }
    
   
}


