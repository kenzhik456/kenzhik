//
//  controller.swift
//  leon
//
//  Created by user on 10.07.2023.
//

import Foundation
class TikTakToe {
    var XOs:[XO] = []
    var winCombination = [[0,3,6],[1,4,7],[2,5,8],[0,1,2],[3,4,5],[6,7,8],[0,4,8],[6,4,2]]
    var indexUp = 0
    init() {
        for _ in 0...8 {
            let XO1 = XO()
            XOs.append(XO1)
        }
    }
    func buttonSwitch(at index:Int) {
        indexUp += 1
        if indexUp%2 == 0 {
            XOs[index].XO = "⭕️"
        }
        else{
            XOs[index].XO = "❌"
        }
        XOs[index].isFaceUp = true
    }
    func winCom() -> String? {
            for i in winCombination {
                if XOs[i[0]].XO == XOs[i[1]].XO && XOs[i[1]].XO == XOs[i[2]].XO && XOs [i[0]].isFaceUp
                    {
                    return XOs[i[0]].XO
            }
        }
            if indexUp == 9 {
                return "Ничия"
            }
            return nil
    }
    func restsrt() {
        for i in XOs.indices {
            XOs[i].XO = nil
            XOs[i].isFaceUp = false
        }
        indexUp = 0
    }
}
