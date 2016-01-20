//
//  LobbyViewController.swift
//  TechMon
//
//  Created by hana on 20/1/2016.
//  Copyright © 2016 hana. All rights reserved.
//

import UIKit
import AVFoundation

class LobbyViewController: UIViewController ,AVAudioPlayerDelegate{
    
    var stamina:Float = 0
    var staminaTimer: NSTimer!
    var util: TechDraUtility!
    var player: Player!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var staminaBar: UIProgressView!
    @IBOutlet var levelLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player(name: "Man of Valor", imageName: "yusya.png")
        staminaBar.transform = CGAffineTransformMakeScale(1.0, 4.0)

        nameLabel.text = player.name
        levelLabel.text = "Lv. 15"
        stamina = 100
        
        util = TechDraUtility()
        
        cureStamina()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
