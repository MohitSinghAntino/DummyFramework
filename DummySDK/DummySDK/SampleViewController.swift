//
//  File.swift
//  DummySDK
//
//  Created by Mohit Singh on 11/08/25.
//

import Foundation
import UIKit

public class SampleViewController: UIViewController {
    @IBOutlet public weak var backButton: UIButton!
    
    @IBAction public func backButtonTapped() {
        self.navigationController?.popViewController(animated: true)
    }
}
