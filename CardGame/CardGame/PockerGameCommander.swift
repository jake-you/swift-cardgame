//
//  PockerGameCommander.swift
//  CardGame
//
//  Created by sungchan.you on 2019/09/28.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

enum Command: Int {
    case reset = 1, shuffle, distribute, finish
}

protocol Commandable {
    func next() -> Command
}

class PockerGameCommander: Commandable {
    private let provider: GameStateProvider
    private var numberOfDistribution: Int
    
    init(gameStateProvider: GameStateProvider) {
        self.provider = gameStateProvider
        self.numberOfDistribution = 0
    }
    
    func canDistributeCards() -> Bool {
        return provider.pockerGameType.rawValue > numberOfDistribution &&
                provider.deck.cards.count >= provider.numberOfPlayers
    }
    
    func next() -> Command {
        guard canDistributeCards() else {
            return Command.finish
        }
        numberOfDistribution += 1
        return Command.distribute
    }
}
