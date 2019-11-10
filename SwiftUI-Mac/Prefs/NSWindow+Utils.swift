//
//  WindowManager.swift
//  MacTest1
//
//  Created by Sarah Reichelt on 2/11/19.
//  Copyright © 2019 Sarah Reichelt. All rights reserved.
//

import SwiftUI

extension NSWindow {
    
    static func windowExists(withTitle title: String) -> Bool {
        if let existingWindow = NSApplication.shared.windows.first(where: { $0.title == title }) {
            existingWindow.makeKeyAndOrderFront(nil)
            return true
        }
        return false
    }
    
    static func createStandardWindow(withTitle title: String,
                                     width: CGFloat = 800, height: CGFloat = 600) -> NSWindow {
        let window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: width, height: height),
            styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
            backing: .buffered, defer: false)
        window.center()
        window.title = title
        return window
    }
    
}
