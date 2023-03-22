
import UIKit
import BubbleView

class ViewController: UIViewController {
    lazy var bubbleView: BubbleView = {
        let view = BubbleView(text: "Hello World")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var bubbleView2: BubbleView = {
        let view = BubbleView(text: "Hello World")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.color = .red
        return view
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup(){
        view.addSubview(bubbleView)
        view.addSubview(bubbleView2)
        
        NSLayoutConstraint.activate([
            bubbleView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -50),
            bubbleView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200),
            bubbleView.widthAnchor.constraint(equalToConstant: 150),
            bubbleView.heightAnchor.constraint(equalToConstant: 50),
            
            bubbleView2.centerXAnchor.constraint(equalTo: view.centerXAnchor,constant: 50),
            bubbleView2.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 200),
            bubbleView2.widthAnchor.constraint(equalToConstant: 150),
            bubbleView2.heightAnchor.constraint(equalToConstant: 50),
        ])
    }

}

