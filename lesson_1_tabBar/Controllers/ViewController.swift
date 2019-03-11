//
//  ViewController.swift
//  lesson_1_tabBar
//
//  Created by Иван longrail on 07/03/2019.
//  Copyright © 2019 Иван longrail. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var informationLabel: UILabel!
    @IBOutlet weak var lightStyle: UIButton!
    @IBOutlet weak var darkStyle: UIButton!
    
    enum informationLabelText: String {
        case contactsText = "Имя: Деркачев Иван \nПочта: longrail@yandex.ru"
        case educationText = "Образование: \n  - неоконченное высшее, 2007г., МГТУ им. Н.Э.Баумана, факультет \"Информатика и системы управления\" \n\n  - высшее,2013г. МГТУ им. Н.Э. Баумана, факультет \"Биомедицинская техника\""
        case professionText = "Профессиональные навыки: \n  - монтаж, диагностика, ремонт аппаратов УЗИ, физиотерапевтичского оборудования, стерилизационного оборудования, ультразвукового оборудования\n  - ведение документооборота, организация складсокого хранения, логистики\n\nНавыки программирования:\n  - Matlab(junior), C++(junior)\n\nХобби:\n  - автотуризм, кемпинг"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        switch self.title {
        case "Contacts":
            informationLabel.text = informationLabelText.contactsText.rawValue
        case "Education":
            informationLabel.text = informationLabelText.educationText.rawValue
        case "Profession":
            informationLabel.text = informationLabelText.professionText.rawValue
        default: break
        }
        
        if self.title == "Contacts" {
            informationLabel.text = informationLabelText.contactsText.rawValue
        }
    }

    @IBAction func LightStyle(_ sender: UIButton) {
        tabBarController?.viewControllers?.forEach { viewController in
            let controller = viewController as! ViewController
            let newBackgroundColor = controller.view.backgroundColor?.withAlphaComponent(1)
            controller.view.backgroundColor = newBackgroundColor
            controller.informationLabel.textColor = .black
        }
    }
    
    @IBAction func DarkStyle(_ sender: UIButton) {
        tabBarController?.viewControllers?.forEach { viewController in
            let controller = viewController as! ViewController
            let newBackgroundColor = controller.view.backgroundColor?.withAlphaComponent(0.6)
            controller.view.backgroundColor = newBackgroundColor
            controller.informationLabel.textColor = .white
        }
    }
}
