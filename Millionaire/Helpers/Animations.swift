//
//  Animations.swift
//  Millionaire
//
//  Created by Nikolay Trofimov on 06.09.2020.
//  Copyright © 2020 Nikolay Trofimov. All rights reserved.
//

import UIKit

class Animations: UIViewController {
    
    func backgroungAnimateColor() {
        UIView.animate(
          withDuration: 0.3,
          delay: 0.0,
          options:[.autoreverse, .beginFromCurrentState],
          animations: {
            self.view.backgroundColor = UIColor(red: 0.4, green: 0.8, blue: 0.2, alpha: 1)
          },
          completion: { (finished: Bool) -> Void in
            self.view.backgroundColor = UIColor.black
          }
        )
    }
}
