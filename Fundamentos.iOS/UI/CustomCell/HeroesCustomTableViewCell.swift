//
//  HeroesCustomTableViewCell.swift
//  Fundamentos.iOS
//
//  Created by Pedro on 25/9/23.
//

import UIKit

class HeroesCustomTableViewCell: UITableViewCell {
    @IBOutlet weak var heroeImage: UIImageView!
    @IBOutlet weak var heroeName: UILabel!
    @IBOutlet weak var heroeDescription: UILabel!
    
    static let identifier = "HeroesCustomTableViewCell"
  
    override func awakeFromNib() {
        super.awakeFromNib()
        self.accessoryType = .disclosureIndicator
    }
    
    func configure(with heroe: any HeroesAndTransformations) {
        heroeName.text = heroe.name
        heroeDescription.text = heroe.description
        heroeImage.setImage(for: heroe.photo)
    }
}



