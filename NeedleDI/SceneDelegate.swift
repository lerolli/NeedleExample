import UIKit
import NeedleFoundation

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = (scene as? UIWindowScene)
        else { return }
            
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        
        // generated Needle Function
        registerProviderFactories()
        
        // Our RootComponent
        let rootComponent = RootComponent()
        
        window?.rootViewController = rootComponent.rootViewController
        window?.makeKeyAndVisible()
    }
}

