//
//  NoteDetailViewController.swift
//  Note
//
//  Created by Nasser Aseeri on 15/06/1443 AH.
//

import UIKit

class NoteDetailViewController: UIViewController {

    var note: Note?
    
    @IBOutlet weak private var contentTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = note?.title1
        contentTextView.text = note?.content1
        
    }
    

}
