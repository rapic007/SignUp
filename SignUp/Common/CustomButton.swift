import UIKit

class CustomButton: UIButton {
    init() {
        super.init(frame: .zero)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupButton() {
        
        setTitle("Создать задачу", for: .normal)
        titleLabel?.font = UIFont(name: "lato-regular", size: 15)
        setTitleColor(.white, for: .normal)
        setTitleColor(.lightGray, for: .highlighted)
        layer.backgroundColor = UIColor(red: 0.82, green: 0.353, blue: 0.133, alpha: 1).cgColor
        layer.cornerRadius = 22
        translatesAutoresizingMaskIntoConstraints = false

    }
    
    func smallButton(imageName: String) {
        frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        setImage(UIImage(named: imageName), for: .normal)
    }
}
