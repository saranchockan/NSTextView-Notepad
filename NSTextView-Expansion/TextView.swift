//
//  TextView.swift
//  NSTextView_Save
//
//  Created by Saranjitharunesh Chockan on 2/28/18.
//  Copyright © 2018 Saranjitharunesh Chockan. All rights reserved.
//

import Cocoa
import Anchors

class TextView: NSTextView {
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
    }
    
    override var intrinsicContentSize: NSSize{
        
        guard let manager = textContainer?.layoutManager else {
            return .zero
        }
        
        if manager.textStorage?.length==0{
            var frame: NSRect = self.frame
            frame.size.height = 204
            frame.size.width = 307
            return frame.size
        }
        
        if manager.usedRect(for: textContainer!).size.height<=204{
            return self.frame.size
        }
        
        manager.ensureLayout(for: textContainer!)
        return manager.usedRect(for: textContainer!).size
    }
    
}

