//
//  ViewController.swift
//  NSTextView-Expansion
//
//  Created by Saranjitharunesh Chockan on 2/28/18.
//  Copyright © 2018 Saranjitharunesh Chockan. All rights reserved.
//

import Cocoa
import Anchors

class ViewController: NSViewController {

    @IBOutlet var textView: TextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear() {
        self.view.window?.styleMask.remove(NSWindow.StyleMask.resizable)
    }
    override var representedObject: Any? {
        didSet {
        }
    }


}



