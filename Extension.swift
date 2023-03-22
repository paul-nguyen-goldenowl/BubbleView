import UIKit

//get Bundle
func getFrameworkBundle() -> Bundle? {
    var bundle: Bundle?
    if let urlString = Bundle.main.path(forResource: "BubbleView", ofType: "framework", inDirectory: "Frameworks") {
        bundle = (Bundle(url: URL(fileURLWithPath: urlString)))
    }
        return bundle
}
let frameworkBundle = getFrameworkBundle()

func getResourceBundle() -> Bundle? {
    guard let frameworkBundle = frameworkBundle,
          let resourceUrl = frameworkBundle.url(forResource: "BubbleView", withExtension: "bundle"),
          let resourceBundle = Bundle(url: resourceUrl) else {
        return nil
    }
    
    return resourceBundle
}
