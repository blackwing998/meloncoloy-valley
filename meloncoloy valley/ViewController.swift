//
//  ViewController.swift
//  meloncoloy valley
//
//  Created by James.Cotter on 4/23/19.
//  Copyright © 2019 James Cotter. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
 
    
    @IBOutlet weak var anacondaHealth: UILabel!
    @IBOutlet weak var orkHealth: UILabel!
    @IBOutlet weak var knightHealth: UILabel!
    @IBOutlet weak var bigCatHealth: UILabel!
    @IBOutlet weak var warriorHealthK: UILabel!
    @IBOutlet weak var warriorAttackBC: UILabel!
    @IBOutlet weak var warriorHealthO: UILabel!
    @IBOutlet weak var warriorHealthA: UILabel!
    @IBOutlet weak var monsterTableView: UITableView!
    @IBOutlet weak var nameLalbe: UILabel!
    
    
    
    var monsterPlayerIndex:[String] = ["Warrior {Health = 50} {attack = 35 - 50}", "Rouge {health = 30} {Attack = 40 - 65}", "mage {Health = 20} {Attack = 25 - 75}",  "Knight {Health = 45} {Attack = 1 - 10}", "BigCat {health = 40}, {Attack = 5 - 25}", "ORK {Health = 60} {attack = 20 - 30}", "Anaconda {Health = 80} {Attack = 10 - 40}", "green thing {health = 5} {attack = 1}", "Barbearallen {health = 60} {attack = 0 - 60}", "undeadPriest {Health = 1} {Atack = 1}"]
    
    
    struct warrior {
        var warriorHealth = Int(50)
        var warriorAttack = Int(50)
        var isDead = Bool(false)
        var name = String("warrior")
        var monsterName:[String] = ["Knight", "Big cat", "ORK!!!", "anaconda & White snake" ]
    }
    
    struct Rouge {
       var rougeHealth = Int(30)
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
        var knightsHealth = Int(45)
        var knightAttack = Int.random(in:1...10)
        var bigCatHealth = Int(40)
        var bigCatAttack = Int.random(in:5...25)
        var orkHealth = Int(60)
        var orkAttack = Int.random(in:20...30)
        var anacondaWhiteSnakeHealth = Int(80)
        var anacondaWhiteSnakeAttack = Int.random(in:10...40)
        
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
        var anacondaWhiteSnakeAttack = Int.random(in:10...40)
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
        monsterTableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return monsterPlayerIndex.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let monsterTableCell = tableView.dequeueReusableCell(withIdentifier: "monsterCell")!
        let HolderText = monsterPlayerIndex[indexPath.row]
        
        monsterTableCell.textLabel?.text = HolderText
        
        return monsterTableCell
    }
    @IBAction func attackKnight(_ sender: Any) {
    
    Ragnar.warriorHealth -= RagnarsEnemys.knightAttack
    Ragnar.warriorAttack = Int.random(in:35...50)
    RagnarsEnemys.knightAttack = Int.random(in:1...10)
    RagnarsEnemys.knightsHealth -= Ragnar.warriorAttack
    warriorHealthK.text = String(Ragnar.warriorHealth)
    knightHealth.text = String(RagnarsEnemys.knightsHealth)
        
    }
    @IBAction func bigCatAttack(_ sender: Any) {
        Ragnar.warriorHealth -= RagnarsEnemys.bigCatAttack
        Ragnar.warriorAttack = Int.random(in:35...50)
        RagnarsEnemys.bigCatHealth -= Ragnar.warriorAttack
        RagnarsEnemys.bigCatAttack = Int.random(in:5...25)
        warriorAttackBC.text = String(Ragnar.warriorHealth)
        bigCatHealth.text = String(RagnarsEnemys.bigCatHealth)
    }
    
    
    
    @IBAction func orkAttack(_ sender: Any) {
        Ragnar.warriorHealth -= RagnarsEnemys.orkAttack
        Ragnar.warriorAttack = Int.random(in:35...50)
        RagnarsEnemys.orkHealth -= Ragnar.warriorAttack
        RagnarsEnemys.orkAttack = Int.random(in:20...40)
        warriorHealthO.text = String(Ragnar.warriorHealth)
        orkHealth.text = String(RagnarsEnemys.orkHealth)
    }


    @IBAction func anacondaAttack(_ sender: Any) {
        Ragnar.warriorHealth -= RagnarsEnemys.anacondaWhiteSnakeAttack
        Ragnar.warriorAttack = Int.random(in:35...50)
        RagnarsEnemys.anacondaWhiteSnakeHealth -= Ragnar.warriorAttack
        RagnarsEnemys.anacondaWhiteSnakeAttack = Int.random(in:10...40)
        warriorHealthA.text = String(Ragnar.warriorHealth)
        anacondaHealth.text = String(RagnarsEnemys.anacondaWhiteSnakeHealth)
    }
    

}
    


