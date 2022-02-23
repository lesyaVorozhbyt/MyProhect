//
//  AddTaskViewController.swift
//  DataBeetweenControllers
//
//  Created by Lesia Vorozhbyt on 23.02.2022.
//

import UIKit

protocol AddTaskViewControllerDelegate: AnyObject { 
    func enteredTaskName(_ name: String)
}

class AddTaskViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    weak var delegate: AddTaskViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchOnAddButton(_ sender: Any) {
        delegate?.enteredTaskName(textField.text ?? "")
        
        dismiss(animated: true, completion: nil)
        
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
