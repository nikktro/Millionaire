//
//  Protocol.swift
//  Millionaire
//
//  Created by Nikolay Trofimov on 03.09.2020.
//  Copyright © 2020 Nikolay Trofimov. All rights reserved.
//

import Foundation

protocol GameDelegate: class {
    func sendData(userAnswer: String)
}

