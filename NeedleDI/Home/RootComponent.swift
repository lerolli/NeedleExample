import NeedleFoundation
import UIKit

final class RootComponent: BootstrapComponent {
    public var userData: UserDataParseableProtocol = UserDataStruct(data: "HI!")

    var detailComponent: DetailComponent {
        return DetailComponent(parent: self)
    }
    
    var rootViewController: UIViewController {
        return RootViewController(
            detailBuilder: detailComponent
        )
    }
}
