//
//  TextBox.swift
//  NSTextView_Save
//
//  Created by Saranjitharunesh Chockan on 2/28/18.
//  Copyright © 2018 Saranjitharunesh Chockan. All rights reserved.
//

import Cocoa
import Anchors

class TextBox: NSView, NSTextViewDelegate {
    
    var ScrollView: NSScrollView = NSScrollView()
    var ClipView: NSClipView = NSClipView()
    var TextView: NSTextView = NSTextView()
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        var subViews: [NSView] = self.subviews
        
        for v in subViews{
            if let _: NSScrollView = v as? NSScrollView{
                ScrollView = v as! NSScrollView
            }
        }
        subViews = ScrollView.subviews
        
        for v in subViews{
            if let _: NSClipView = v as? NSClipView{
                ClipView = v as! NSClipView
            }
        }
        
        subViews = ClipView.subviews
        
        for v in subViews{
            if let _: NSTextView = v as? NSTextView{
                TextView = v as! NSTextView
                TextView.delegate = self
            }
        }
        
        /*
         anchor.top.constant sets the gap between the top and bottom of the Parent View and the TextView
         anchor.paddingHorizontally sets the gap between the vertical and horizontal of the Parent View and the TextView
         */
        
        activate(ScrollView.anchor.top.constant(0),ScrollView.anchor.paddingHorizontally(0))
        activate(TextView.anchor.edges)
        
        
    }
    
    func rePosition(){
        let newFrame = NSRect(x: self.frame.origin.x, y: self.frame.origin.y-14, width: self.frame.width, height: self.frame.height+14)
        self.frame = newFrame
    }
    
    func textDidChange(_ notification: Notification) {
        rePosition()
        TextView.invalidateIntrinsicContentSize()
    }
    
    
    
}

