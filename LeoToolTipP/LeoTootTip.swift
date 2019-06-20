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
class LeoTipView : UIView {
    
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
        self.alpha = layerBackgroundAlpa
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
        stackview.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -15).isActive = true
        stackview.topAnchor.constraint(equalTo: self.topAnchor ,constant: topAnchorConstraint).isActive = true
        
        
    }
}

extension LeoTipView: UIGestureRecognizerDelegate {
    
    open override func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
}
// MARK: Builder Patteren
extension LeoTipView {
    
    
    
    public final func build() -> LeoTipView  {
        print("On frame " ,"", frame.minY , frame.midY , frame.maxY)
        
        print("\t On targetFrame " ,"", targetFrame.minY , targetFrame.midY , targetFrame.maxY)
        
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
    
    
    
    
    public  func withTopAnchorConstraint(_  value : CGFloat) -> LeoTipView{
        self.automaticPositioning = false
        self.topAnchorConstraint = value
        
        return self
        
    }
    
    
    public  func withAlpha(_  value : CGFloat) -> LeoTipView{
        
        self.layerBackgroundAlpa = value
        
        return self
        
    }
    
    public  func withBackgroundColor(_  color : UIColor) -> LeoTipView{
        self.layerBackgroundColor = color
        return self
    }
    public  func withPositionY(_  position : Position) -> LeoTipView{
        
        self.positionY = position
        
        return self
        
    }
    
    public  func withAutomaticPositioning(_  value : Bool) -> LeoTipView{
        
        self.automaticPositioning = value
        return self
        
    }
    
    public  func withShape(_  shape : TipShape) -> LeoTipView{
        self.shape = shape
        return self
        
    }
    
    public func withAddAnyView ( callback : (()-> UIView)? = nil ) -> LeoTipView {
        if let view = callback?() {
            elements.append(view)
        }
        return self
    }
    func withPrint(_ callback : (()-> Void)? = nil ) -> LeoTipView  {
        callback?()
        return self
    }
    
    func withClosureShouldShow(_ value : @escaping (() -> Bool) ) -> LeoTipView {
        closureShouldShow = value
        return self
    }
    
    func withSelf(_ callback : ((LeoTipView?)-> Void)? = nil ) -> LeoTipView  {
        callback?(self)
        return self
    }
    func run() {
        
    }
    
}
extension UIButton : LeoToolTipable  {
    func leoAddOn(_ view :  UIView  , superView : UIView? = nil) -> LeoTipView {
        
        let frameconvert = view.convert(self.frame ,from:superView)
        
        
        
        let backGroundView = LeoTipView(frame: view.bounds, targetframe: frameconvert)
        backGroundView.isHidden = true
        
        
        view.addSubview(backGroundView)
        addTarget(backGroundView, action:#selector(LeoTipView.touchUpInside), for: .touchUpInside)
        return backGroundView
    }
    func leoHide(){
        if self.superview?.superview is LeoTipView {
            self.superview?.superview?.isHidden  = true
        }
    }
}


