import UIKit

public class BubbleView: UIView {
    public var text: String {
        didSet{
            label.text = text
        }
    }
    
    public var color: UIColor {
        didSet {
            label.textColor = color
            bg.image = bg.image?.withTintColor(color, renderingMode: .alwaysOriginal)
        }
    }
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = text
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints =  false
        return label
    }()
    
    lazy var bg: UIImageView = {
//        let image = UIImageView(image: UIImage(named: "bubble"))
        let image = UIImageView(image: UIImage(
            named: "bubble",
            in: Bundle(for: BubbleView.self),
            compatibleWith: nil)
        )
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    public init(text: String = "", color: UIColor = .black) {
        self.text = text
        self.color = color
        
        super.init(frame: .zero)
        setup()
    }
    
    func setup() {
        addSubview(bg)
        addSubview(label)
        NSLayoutConstraint.activate([
            bg.topAnchor.constraint(equalTo: topAnchor),
            bg.bottomAnchor.constraint(equalTo: bottomAnchor),
            bg.leftAnchor.constraint(equalTo: leftAnchor),
            bg.rightAnchor.constraint(equalTo: rightAnchor),
            
            label.topAnchor.constraint(equalTo: topAnchor),
            label.bottomAnchor.constraint(equalTo: bottomAnchor),
            label.leftAnchor.constraint(equalTo: leftAnchor),
            label.rightAnchor.constraint(equalTo: rightAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
