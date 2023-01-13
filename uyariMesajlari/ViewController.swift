//
//  ViewController.swift
//  uyariMesajlari
//
//  Created by Faruk CANSIZ on 19.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        
        if emailTextField.text == "" {
            //email yanlış
            uyariMesaji(title: "Hata!", message: "Mail Giriniz!")
        } else if passwordTextField.text == "" {
            //Password yanlış
            uyariMesaji(title: "Hata!", message: "Şifre Giriniz!")
        } else if passwordTextField.text != password2TextField.text {
            //Passwordlar birbirine eşit değil
            uyariMesaji(title: "Hata!", message: "Şifreler Uyuşmuyor!")
        } else {
            //Başarıyla kayıt oldunuz
            uyariMesaji(title: "Başarılar!", message: "Başarıyla Kayıt Oldunuz!")
        }
    }
    
    func uyariMesaji(title: String, message: String) {
        let uyariMesaj = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        
        uyariMesaj.addAction(okButton)
        
        self.present(uyariMesaj, animated: true)
    }
    
    
    
    
    


}

