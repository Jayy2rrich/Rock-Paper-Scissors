//
//  Sign.swift
//  Rock, Paper, Scissors
//
//  Created by 7g on 12/20/22.
//

import Foundation

enum Sign{
    case rock
    case paper
    case scissors

    var gesture: String{
        if self == .rock{
            return "👊"
        }
        else if self == .paper{
            return "🖐"
        }
        else
       {
            return "✌️"
        }
    }
    
    func checkWin(opponent: Sign) -> GameState {
        switch (self, opponent) {
        case (.rock, .scissors), (.paper, .rock), (.scissors, .paper):
          return .win
        case (.rock, .paper), (.paper, .scissors), (.scissors, .rock):
          return .lose
        default:
          return .draw
        }
      }
}

func randomSign() -> Sign {
    let sign = Int.random(in: 0...2)
    if sign == 0 {
        return .rock
    }
    else if sign == 1 {
        return .paper
        
    }
    else {
        return .scissors
        
    }
}

enum GameState {
    case start
    case win
    case lose
    case draw
}


