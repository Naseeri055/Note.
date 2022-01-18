//
//  NotesViewController.swift
//  Note
//
//  Created by Nasser Aseeri on 15/06/1443 AH.
//

import UIKit

struct Note {
    let title1: String
    let content1: String
}

class NotesViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    
    var notes = [
        Note(title1: "iOS Learning", content1: "I have to mastering tableView"),
        Note(title1: "Groceries", content1: "Apple, Banana, Oil, Meat, 7 PM."),
        Note(title1: "Basic Programming", content1: "variables, data types, if-else, array, loop, fuctions"),
        Note(title1: "iOS UI Architecture", content1: "MVC, MVVM, MVP, VIPER, etc."),
        Note(title1: "Swift UI Building", content1: "Storyboard, UIKit Swift Programmatic UI, SwiftUI")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
        
        
    }
    
    
    func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        
            setupCell()
        }

    func setupCell() {
        
        let nib = UINib(nibName: "NoteCell", bundle: Bundle.main)
        tableView.register(nib, forCellReuseIdentifier: NoteCell.cellId)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SEGUE_NOTE_DETAIL" {
            if let viewController = segue.destination as? NoteDetailViewController {
                if let note = sender as? Note {
                    viewController.note = note
                }
            }
        }
    }

}

// MARK: - UITableViewDataSource
extension NotesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: NoteCell.cellId, for: indexPath) as! NoteCell
        let note = notes[indexPath.row]
        cell1.titleLabel?.text = note.content1
        cell1.contentLabel?.text = note.content1
        return cell1
    }
    
}
    
    // MARK: - UITableViewDelegate
    extension NotesViewController: UITableViewDelegate {
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return NoteCell.cellHeight
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let note = notes[indexPath.row]
            performSegue(withIdentifier: "SEGUE_NOTE_DETAIL", sender: note)
        }
        
        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
                notes.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .automatic)
            }
        }
        
    }


