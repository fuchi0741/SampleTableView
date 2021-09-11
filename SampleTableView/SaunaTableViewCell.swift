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

class SaunaTableViewCell: UITableViewCell {
    
    weak var delegate: SaunaTableViewCellDelegate?
    
    @IBOutlet weak var saunaImageView: UIImageView!
    @IBOutlet weak var saunaNameLabel: UILabel!
    @IBOutlet weak var locationButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func didTapLocationButton(_ sender: UIButton) {
        delegate?.didTapButton()
    }
}
