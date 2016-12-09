//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___PresenterInput {
    func presentSomething(response: ___FILEBASENAMEASIDENTIFIER___Scene.___VARIABLE_sceneTask___.Response)
}

protocol ___FILEBASENAMEASIDENTIFIER___PresenterOutput: class {
    func displaySomething(viewModel: ___FILEBASENAMEASIDENTIFIER___Scene.___VARIABLE_sceneTask___.ViewModel)
}

class ___FILEBASENAMEASIDENTIFIER___Presenter: ___FILEBASENAMEASIDENTIFIER___PresenterInput {
    weak var output: ___FILEBASENAMEASIDENTIFIER___PresenterOutput!
  
    // MARK: Presentation logic
    func presentSomething(response: ___FILEBASENAMEASIDENTIFIER___Scene.___VARIABLE_sceneTask___.Response) {
        // NOTE: Format the response from the Interactor and pass the result back to the View Controller

        let viewModel = ___FILEBASENAMEASIDENTIFIER___Scene.___VARIABLE_sceneTask___.ViewModel()
        output.displaySomething(viewModel: viewModel)
    }
}
