//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

// MARK: Connect View, Interactor, and Presenter
extension ___FILEBASENAMEASIDENTIFIER___ViewController: ___FILEBASENAMEASIDENTIFIER___PresenterOutput {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        router.passDataToNextScene(segue: segue)
    }
}

extension ___FILEBASENAMEASIDENTIFIER___Interactor: ___FILEBASENAMEASIDENTIFIER___ViewControllerOutput {
}

extension ___FILEBASENAMEASIDENTIFIER___Presenter: ___FILEBASENAMEASIDENTIFIER___InteractorOutput {
}

class ___FILEBASENAMEASIDENTIFIER___Configurator {
  // MARK: Object lifecycle
    static let sharedInstance: ___FILEBASENAMEASIDENTIFIER___Configurator = { ___FILEBASENAMEASIDENTIFIER___Configurator() }()
  
  // MARK: Configuration
    func configure(viewController: ___FILEBASENAMEASIDENTIFIER___ViewController) {
        let router = ___FILEBASENAMEASIDENTIFIER___Router()
        router.viewController = viewController

        let presenter = ___FILEBASENAMEASIDENTIFIER___Presenter()
        presenter.output = viewController

        let interactor = ___FILEBASENAMEASIDENTIFIER___Interactor()
        interactor.output = presenter

        viewController.output = interactor
        viewController.router = router
    }
}
