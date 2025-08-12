//
//  DummyView.swift
//  DummySDK
//
//  Created by Mohit Singh on 11/08/25.
//

import UIKit

public class DummyView: UIView {

    @IBOutlet public weak var titleLbl: UILabel!
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    private func commonInit() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "DummyView", bundle: bundle)
        if let view = nib.instantiate(withOwner: self, options: nil).first as? UIView {
            view.frame = self.bounds
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            addSubview(view)
        }
    }
}
