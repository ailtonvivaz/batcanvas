//
//  CanvasView.swift
//  BatPencil
//
//  Created by Ailton Vieira Pinto Filho on 05/02/20.
//  Copyright © 2020 Veevaz. All rights reserved.
//

import UIKit

class CanvasView: UIView {
    var onMove: (UITouch) -> () = { _ in }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        onMove(touches.first!)
    }
}
