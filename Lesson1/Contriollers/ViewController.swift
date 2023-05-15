//
//  ViewController.swift
//  Lesson1
//
//  Created by Gulzat on 11/5/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var textFiled: UITextField!
    
    @IBAction func showNextPage(_ sender: Any) {
        
        if textFiled.text?.isEmpty ?? true {
            textFiled.placeholder = "Fill the field, please"
            textFiled.layer.borderColor = UIColor(red: 56/255,
                                                  green: 95/255,
                                                  blue: 255/255,
                                                  alpha: 1).cgColor
            //rgba(1,56,95,255)
            //UIColor.red.cgColor
            textFiled.layer.borderWidth = 3
        } else {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
            let name = textFiled.text ?? "textFiled"
            vc.name = name.isEmpty ? "empty" : name
        /// # Mark: переход на экран без navigationControllerа
           // vc.modalPresentationStyle = .fullScreen
          //  self.present(vc, animated: true)
        /// # Mark: переход на экран через navigationController
            navigationController?.pushViewController(vc, animated: true)
        /// # Mark: переход стартовый экран navigationControllerа
          //    navigationController?.popToRootViewController(animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "it is new text from controller"
        nameLabel.textColor = .red
        nameLabel.font = .systemFont(ofSize: 24)
    }
    
    /// # функция для передачи данных на другой экран, вызывается только когда переход делаем через segue
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //
    //        let vc = segue.destination as! SecondViewController
    //      //  textFiled.text = nil
    //        let name = textFiled.text ?? "textFiled"
    //        print("name: \(name)")
    //        vc.name = name.isEmpty ? "empty" : name
    //    }
    
    /// # функция которая определяет разрешить переход или нет. Тоже вызывается только когда переход делаем через segue
    
    //    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
    //
    //        if textFiled.text?.isEmpty ?? true {
    //            textFiled.placeholder = "Fill the field, please"
    //            textFiled.layer.borderColor = UIColor.red.cgColor
    //            textFiled.layer.borderWidth = 3
    //            return false
    //        }
    //
    //        return true
    //    }
}

