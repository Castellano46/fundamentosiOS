//
//  LoginViewController.swift
//  Fundamentos.iOS
//
//  Created by Pedro on 25/9/23.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var continueButton: UIButton!
    
    @IBOutlet weak var backgroundImage: UIImageView!
    private let model = NetworkModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImage.image = UIImage(named: "fondo2")
        backgroundImage.contentMode = .scaleAspectFill
    
    }
    
    @IBAction func continueAction(_ sender: Any) {
        model.login(
            user: userNameText.text ?? "",
            password: passwordText.text ?? ""
        ) { [weak self] result in
            switch result {
                case let .success(token):
                    self?.model.getHeroes {  result in
                        switch  result {
                            case let .success(heroes): 
                                DispatchQueue.main.async {
                                    self?.navigationHeroes(heroes: heroes)
                                }
                            case let .failure(error):
                                print("error \(error)")
                        }
                    }
                case let .failure(error):
                    print("error \(error)")
                    self?.showError(textField: self?.userNameText)
                    self?.showError(textField: self?.passwordText)
            }
        }
    }
}
extension LoginViewController {
    func navigationHeroes(heroes: [Hero] ) {
            let heroesList = HeroesListTableViewController(model: heroes)
            self.navigationController?.setViewControllers([heroesList],
                                                        animated: true)
    }
}

extension LoginViewController {
    func showError(textField: UITextField?){
        DispatchQueue.main.async {
            textField?.placeholder = "Usuario o contraseña Incorrectos"
            textField?.text = ""
            textField?.backgroundColor = .red
        }
    }
}
