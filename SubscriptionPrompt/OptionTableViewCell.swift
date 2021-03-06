//
//  OptionTableViewCell.swift
//  SubscriptionPrompt
//
//  Created by Binur Konarbayev on 7/16/16.
//
//

import UIKit

final class OptionTableViewCell: UITableViewCell {
    private var disclosureType: UITableViewCellAccessoryType?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpViews()
    }
    
    private func setUpViews() {
        let backgroundView = UIView()
        backgroundView.backgroundColor = .orangeColor()
        selectedBackgroundView = backgroundView
        textLabel?.textAlignment = .Center
    }
}

extension OptionTableViewCell {
    func setUp(withOption option: Option) {
        accessoryType = option.checked ? (disclosureType ?? .Checkmark) : .None
        textLabel?.text = option.title
    }
    
    func setUp(withOptionStyle style: OptionStyle) {
        backgroundColor = style.backgroundColor
        textLabel?.font = style.textFont
        textLabel?.textColor = style.textColor
        disclosureType = style.accessoryType
    }
}
