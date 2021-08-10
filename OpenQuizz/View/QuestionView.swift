//
//  QuestionView.swift
//  OpenQuizz
//
//  Created by fred on 05/08/2021.
//

import UIKit

class QuestionView: UIView {

    @IBOutlet private var label: UILabel!
    @IBOutlet private var icon: UIImageView!

    enum Style {
        case correct, incorrect, standard
    }
    
    var style: Style = .standard {
        didSet {
            setStyle(style)
        }
    }
    
    var title = "" {                //propriété observée
        didSet {
            label.text = title    //dès que le contenu de title est modifié, le contenu de didSet est exécuté.
        }                           // dès que title est modifié, le label le sera aussi.
    }
    
    private func setStyle(_ style: Style) {
        switch style {
        case .correct:
            backgroundColor = UIColor(red: 200/255.0, green: 236/255.0, blue: 160/255.0, alpha: 1)
            icon.image = UIImage(named: "Icon Correct")
            icon.isHidden = false
        case .incorrect:
            backgroundColor = #colorLiteral(red: 0.3627071977, green: 0.5543119311, blue: 0.7833117843, alpha: 1)
            icon.image = #imageLiteral(resourceName: "Icon Error")
            icon.isHidden = false
        case .standard:
            backgroundColor = #colorLiteral(red: 0.7488165498, green: 0.7731627822, blue: 0.7900409102, alpha: 1)
            icon.isHidden = true
        }
    }
    
}
