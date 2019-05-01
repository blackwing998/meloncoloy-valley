//
//  ViewController.swift
//  meloncoloy valley
//
//  Created by James.Cotter on 4/23/19.
//  Copyright © 2019 James Cotter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    struct warrior {
        var warriorHealth = Int(50)
        var warriorAttack = Int(50)
        var isDead = Bool(false)
        var name = String("warrior")
        var monsterName:[String] = ["Knight", "Big cat", "ORK!!!", "anaconda & White snake" ]
    }
    struct Rouge {
       var rougeHealth = Int(20)
        var rougeAttack = Int(50)
        var isDead = Bool(false)
        var name =  String("Rouge")
        var monsterName:[String] = ["Big cat", "greenthing", "ORK", "Mage", "barbearallen"]
        
        }
    struct Mage{
        var MageHealth = Int(20)
        var MageAttack = Int(50)
        var isDead = Bool(false)
        var name =  String("Mage")
        var monsterName:[String] = ["Big cat", "greenthing", "ORK", "Knight", "barbearallen","anaconda & White snake", "undead priest"]
        
    }
    struct warriorEnemy{
        var knightHealth = Int(35)
        var knightAttack = Int.random(in:1...10)
        var bigCatHealth = Int(40)
        var bigCatAttack = Int.random(in:5...25)
        var orkHealth = Int(80)
        var orkAttack = Int.random(in:20...40)
        var anacondaWhiteSnakeHealth = Int(80)
        var anacondaWhiteSnakeAttack = Int.random(in:0...40)
        
    }
    struct rougeEnemy{
        var bigCatHealth = Int(40)
        var bigCatAttack = Int.random(in:5...25)
        var greenThingHealth = Int(5)
        var greenThingAttack = Int(1)
        var orkHealth = Int(80)
        var orkAttack = Int.random(in:20...40)
        var mageHealth = Int(20)
        var mageAttack = Int.random(in:0...60)
        var barbearallenHealth = Int(60)
        var barbearallenAttack = Int.random(in:0...60)
        
    }
    struct mageEnemy{
        var bigCatHealth = Int(40)
        var bigCatAttack = Int.random(in:5...25)
        var greenThingHealth = Int(5)
        var greenThingAttack = Int(1)
        var orkHealth = Int(80)
        var orkAttack = Int.random(in:20...40)
        var knightHealth = Int(35)
        var knightAttack = Int.random(in:1...10)
        var barbearallenHealth = Int(60)
        var barbearallenAttack = Int.random(in:0...60)
        var anacondaWhiteSnakeHealth = Int(80)
        var anacondaWhiteSnakeAttack = Int.random(in:0...40)
        var undeadPreistHealth = Int(1)
        var undeadPriestAtack = Int(1)
    }
    var Ragnar = warrior()
    var rouge = Rouge()
    var jonathan = Mage()
    var RagnarsEnemys = warriorEnemy()
    var rougesEnemys = rougeEnemy()
    var jonathansEnemys = mageEnemy()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func warriorAttackButton(_ sender: Any) {
        Ragnar.warriorAttack = Int.random(in:30...70)
        Ragnar.warriorHealth = Int(50)
       
        }
    }
    


