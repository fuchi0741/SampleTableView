//
//  SaunaTableViewCell.swift
//  SampleTableView
//
//  Created by 渕一真 on 2021/09/08.
//

import UIKit

protocol SaunaTableViewCellDelegate: AnyObject {
    func didTapButton()
}

final class SaunaTableViewCell: UITableViewCell {
    
    weak var delegate: SaunaTableViewCellDelegate?
    
    @IBOutlet private weak var saunaImageView: UIImageView!
    @IBOutlet private weak var saunaNameLabel: UILabel!
    @IBOutlet private weak var locationButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction private func didTapLocationButton(_ sender: UIButton) {
        delegate?.didTapButton()
    }
    
    func setupSaunaName(name: String) {
        saunaNameLabel.text = name
    }
}
