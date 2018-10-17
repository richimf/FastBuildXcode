//
//  AppDelegate.swift
//  FastBuilder
//
//  Created by Ricardo Montesinos Fernandez on 10/17/18.
//  Copyright © 2018 Ricardo Montesinos Fernandez. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  let statusItem = NSStatusBar.system.statusItem(withLength:NSStatusItem.squareLength)
  let popover = NSPopover()
  
  func applicationDidFinishLaunching(_ aNotification: Notification) {
    // Insert code here to initialize your application
    if let button = statusItem.button {
      button.image = NSImage(named:NSImage.Name("StatusBarButtonImage"))
      button.action = #selector(togglePopover(_:))
    }
    popover.contentViewController = ViewController.freshController()
  }
  // Adding menu options
  // The `keyEquivalent` is a keyboard shortcut that you can use to activate the menu item.
  // A lowercase letter uses `Cmd` as the modifier key and an uppercase letter uses Cmd+Shift.
//  func constructMenu() {
//    let menu = NSMenu()
//    menu.addItem(NSMenuItem(title: "Print Quote", action: #selector(AppDelegate.sayHello(_:)), keyEquivalent: "P"))
//    menu.addItem(NSMenuItem.separator())
//    menu.addItem(NSMenuItem(title: "Quit Quotes", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q"))
//    statusItem.menu = menu
//  }

  @objc func togglePopover(_ sender: Any?) {
    if popover.isShown {
      closePopover(sender: sender)
    } else {
      showPopover(sender: sender)
    }
  }

  func showPopover(sender: Any?) {
    if let button = statusItem.button {
      popover.show(relativeTo: button.bounds, of: button, preferredEdge: NSRectEdge.minY)
    }
  }

  func closePopover(sender: Any?) {
    popover.performClose(sender)
  }

  func applicationWillTerminate(_ aNotification: Notification) {
    // Insert code here to tear down your application
  }
}

