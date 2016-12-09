//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___ViewControllerInput {
    func displaySomething(viewModel: ___FILEBASENAMEASIDENTIFIER___Scene.___VARIABLE_sceneTask___.ViewModel)
}

protocol ___FILEBASENAMEASIDENTIFIER___ViewControllerOutput {
    func doSomething(request: ___FILEBASENAMEASIDENTIFIER___Scene.___VARIABLE_sceneTask___.Request)
}

class ___FILEBASENAMEASIDENTIFIER___ViewController: UIViewController, ___FILEBASENAMEASIDENTIFIER___ViewControllerInput {
    var output: ___FILEBASENAMEASIDENTIFIER___ViewControllerOutput!
    var router: ___FILEBASENAMEASIDENTIFIER___Router!

    // MARK: Object lifecycle
    override func awakeFromNib() {
    super.awakeFromNib()
        ___FILEBASENAMEASIDENTIFIER___Configurator.sharedInstance.configure(viewController: self)
    }

    // MARK: View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        doSomethingOnLoad()
    }
  
    // MARK: Event handling
    func doSomethingOnLoad() {
        // NOTE: Ask the Interactor to do some work
        let request = ___FILEBASENAMEASIDENTIFIER___Scene.___VARIABLE_sceneTask___.Request()
        output.doSomething(request: request)
    }

    // MARK: Display logic
    func displaySomething(viewModel: ___FILEBASENAMEASIDENTIFIER___Scene.___VARIABLE_sceneTask___.ViewModel) {
        // NOTE: Display the result from the Presenter
        // nameTextField.text = viewModel.name
    }
}
