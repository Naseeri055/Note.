//
//  NoteCellTableViewCell.swift
//  Note
//
//  Created by Nasser Aseeri on 15/06/1443 AH.
//

import UIKit

class NoteCell: UITableViewCell {

    static let cellId = "NoteCell"
    static let cellHeight: CGFloat = 84
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
