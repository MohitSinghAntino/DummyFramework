//
//  SampleViewController.swift
//  DummySDK
//
//  Created by Mohit Singh on 12/08/25.
//

import Foundation
import UIKit

public class SampleViewController: UIViewController {
    @IBOutlet public weak var backButton: UIButton!
    
    @IBAction public func backButtonTapped() {
        self.navigationController?.popViewController(animated: true)
    }
}
