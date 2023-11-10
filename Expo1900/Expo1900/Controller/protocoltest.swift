//
//  protocoltest.swift
//  Expo1900
//
//  Created by Kiseok on 11/9/23.
//

import UIKit

protocol AlertPresentable where Self: UIViewController {
    
}

extension AlertPresentable {
    func showAppTerminatingAlert() {
        let title = "시스템 오류가 발생했습니다."
        let message = "Data를 불러오는데 실패했습니다. 앱이 종료됩니다."
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let terminateAction = UIAlertAction(title: "지금 종료", style: .destructive) { _ in
            exit(1)
        }
            
        alert.addAction(terminateAction)
        present(alert, animated: true)
    }
}
