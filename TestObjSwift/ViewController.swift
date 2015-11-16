//
//  ViewController.swift
//  TestObjSwift
//
//  Created by Vien Vu  on 10/26/15.
//  Copyright © 2015 VienVu. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation

class ViewController: UIViewController, UITableViewDataSource, AVAudioPlayerDelegate {
    

    

    var blockObj = BlockObj()
    private var player : AVAudioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var label: UILabel!
    var number = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       let a =  Int(arc4random_uniform(UInt32(9)))
        print(a)

        
        let session = AVAudioSession.sharedInstance()
        try! session.setCategory(AVAudioSessionCategoryPlayback)
        try! session.setActive(true)

    }

    @IBAction func testPlay(sender: AnyObject) {
        do  {
            
           let path = NSBundle.mainBundle().pathForResource("M1F1-int8-AFsp", ofType:"aif")
            try self.player = AVAudioPlayer(contentsOfURL:NSURL(fileURLWithPath: path!))
            self.player.delegate = self
            self.player.volume = 1.0
          
            self.player.play()
        } catch let error as NSError {
            print(error.domain)
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var plusTapped: UIButton!
    @IBAction func plusTapped(sender: AnyObject) {
        print(label.description)
        number++
        label.text = "number：\(number)"
        print(label.description)
    }
    @IBAction func moveTapped(sender: AnyObject) {
        
        print(label.description)
        var frame = label.frame
        frame.origin.y -= 20
        
        label.frame = frame
        
        print(label.description)
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCellWithIdentifier("TableViewCell", forIndexPath: indexPath) as! TableViewCell
//        cell.btnTest.addTarget(self, action: "testPress", forControlEvents: UIControlEvents.TouchDragInside)
        
        return cell
    }
    
    func testPress() {
        print("test")
    }
    
    
}

