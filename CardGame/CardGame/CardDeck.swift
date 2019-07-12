//
//  CardDeck.swift
//  CardGame
//
//  Created by JH on 12/07/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

//count() 갖고 있는 카드 개수를 반환한다.
//shuffle() 기능은 전체 카드를 랜덤하게 섞는다.
//removeOne() 기능은 카드 인스턴스 중에 하나를 반환하고 목록에서 삭제한다.
//reset() 처음처럼 모든 카드를 다시 채워넣는다.
//모든 종류의 카드 객체 인스턴스를 포함하는 카드덱 구조체를 구현한다.
struct CardDeck {
    
    private let allNumbers: [CardNumber] = [
        .one,
        .two,
        .three,
        .four,
        .five,
        .six,
        .seven,
        .eight,
        .nine,
        .ten,
        .eleven,
        .twelve,
        .thirteen
    ]
    
    private let allPatterns: [CardPattern] = [ .clover, .diamond, .heart, .spade ]
    
    func makeCardDeck() -> [Card] {
        var cards = [Card]()
        for pattern in allPatterns {
            for number in allNumbers {
                let card = Card.init(pattern: pattern, number: number)
                cards.append(card)
            }
        }
        return cards
    }
    
}
