//
//  Expo1900 - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit

final class HomeViewController: UIViewController, AlertPresentable {
    
    @IBOutlet private weak var expoTitleLabel: UILabel!
    @IBOutlet private weak var expoPosterImageView: UIImageView!
    @IBOutlet private weak var visitorNumberLabel: UILabel!
    @IBOutlet private weak var locationLabel: UILabel!
    @IBOutlet private weak var durationLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var leftFlagImageView: UIImageView!
    @IBOutlet private weak var rightFlagImageView: UIImageView!
    private var expoInformationData = DataDecoder<ExpoInformation>()
    private let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        parseData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        appDelegate.shouldSupportAllOrientation = false
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = true
    }
    
    private func configureUI(expoInformation: ExpoInformation) {
        expoTitleLabel.text = expoInformation.formattedTitle
        expoPosterImageView.image = UIImage(named: "poster")
        visitorNumberLabel.text = expoInformation.formattedVisitorsNumber
        locationLabel.text = expoInformation.location
        durationLabel.text = expoInformation.duration
        descriptionLabel.text = expoInformation.description
        leftFlagImageView.image = UIImage(named: "flag")
        rightFlagImageView.image = UIImage(named: "flag")
    }
    
    private func parseData() {
        do {
            try configureUI(expoInformation: expoInformationData.parse(assetName: "exposition_universelle_1900"))
        } catch {
            showAppTerminatingAlert()
        }
    }
}

