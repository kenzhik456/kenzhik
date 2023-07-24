//
//  ViewController.swift
//  leon
//
//  Created by user on 10.07.2023.
//

import UIKit

class MyViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        restartButton.layer.cornerRadius = 35
        // Do any additional setup after loading the view.
        winner.isHidden = true
    }
    var game = TikTakToe()
    
    
    @IBOutlet weak var winner: UIButton!
    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet var leon: [UIButton]!
    
    @IBOutlet weak var win: UILabel!
    @IBAction func bibi(_ sender: UIButton) {
        let index = leon.firstIndex(of: sender)!
        game.buttonSwitch(at: index)
        updateView()
    }
    func updateView() {
        for i in leon.indices {
            let card = game.XOs[i]
            let button = leon[i]
            if card.isFaceUp {
                button.setTitle(card.XO, for: .normal)
                button.isEnabled = false
            }
            else {
                button.setTitle("", for: .normal)
                button.isEnabled = true
            }
        }
        if let win1 = game.winCom()
        {
            win.text = "победитель \(win1)"
            for i in leon {
                i.isEnabled = false
            }
            if win1 != "Ничия" {
                winner.isHidden = false
            }
        }
        else {
            win.text = ""
        }
        
    }
    @IBAction func restart(_ sender: UIButton) {
        game.restsrt()
        updateView()
        winner.isHidden = true
    }
}
