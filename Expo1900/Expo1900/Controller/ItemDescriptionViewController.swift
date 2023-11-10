//
//  ItemDescriptionViewController.swift
//  Expo1900
//
//  Created by kiseok, Toy on 11/1/23.
//

import UIKit

final class ItemDescriptionViewController: UIViewController {

    @IBOutlet private weak var itemImageView: UIImageView!
    @IBOutlet private weak var itemDescriptionLabel: UILabel!
    private let asset: ExhibitionItem
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    init?(coder: NSCoder, asset: ExhibitionItem) {
        self.asset = asset
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureUI() {
        self.navigationItem.title = asset.name
        itemImageView.image = UIImage(named: asset.imageName)
        itemDescriptionLabel.text = asset.description
    }
}
