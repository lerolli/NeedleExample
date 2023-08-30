import Foundation
import NeedleFoundation
import UIKit

protocol DetailDependency: Dependency {
    var userData: UserDataParseableProtocol { get }
}

protocol DetailBuilder {
    var detailViewController: UIViewController { get }
    
    var name: String { get }
}


final class DetailComponent: Component<DetailDependency>, DetailBuilder {
    var name: String {
        "John"
    }

    
    var detailViewController: UIViewController {
        return DetailViewController(userData: dependency.userData)
    }
}

