//
//  AddNoteViewController.swift
//  Note
//
//  Created by Nasser Aseeri on 15/06/1443 AH.
//

import UIKit

class AddNoteViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentTextView: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    
    }
    
    @IBAction func didTapCancelButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func didTapDoneButton(_ sender: UIBarButtonItem) {
        guard let text = titleTextField.text else { return }
        guard let content = contentTextView.text else { return }
        
        if text == "" || content == "" {
            return
        }
        print(text)
        print(content)
        dismiss(animated: true, completion: nil)
    }

   

}
