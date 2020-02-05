//
//  ViewController.swift
//  BatPencil
//
//  Created by Ailton Vieira Pinto Filho on 05/02/20.
//  Copyright © 2020 Veevaz. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    @IBOutlet var label: UILabel!

    @IBOutlet var canvasView: CanvasView!
    @IBOutlet weak var sceneView: SKView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let pencilInteraction = UIPencilInteraction()
        pencilInteraction.delegate = self
        view.addInteraction(pencilInteraction)

        canvasView.onMove = { touch in
            self.label.text = "\(Int(100 * touch.force)) | \(touch.azimuthAngle(in: self.view))"
        }
    }
}

extension ViewController: UIPencilInteractionDelegate {
    func pencilInteractionDidTap(_ interaction: UIPencilInteraction) {
        self.view.backgroundColor = UIColor(displayP3Red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1.0)
    }
}
