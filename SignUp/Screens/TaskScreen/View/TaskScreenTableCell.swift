import UIKit

class TaskScreenTableCell: UITableViewCell {
    let view = UIView()
    let nameLabel = CustomLabel()
    let image = UIImageView()
    let timerLabel = CustomLabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        timerLabel.text = ""
    }
    
    func setupCell() {
        contentView.backgroundColor = UIColor(red: 0.961, green: 0.961, blue: 0.961, alpha: 1)
        contentView.addSubview(view)
        
        view.addSubview(nameLabel)
        view.addSubview(image)
        view.addSubview(timerLabel)
        view.backgroundColor = .white
        view.layer.cornerRadius = 16
        
        nameLabel.setupLabel(size: 15)
        timerLabel.setupLabel(size: 20)
        [nameLabel, view, image, timerLabel].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            view.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20 ),
            view.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            view.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            view.heightAnchor.constraint(equalToConstant: 60),
            
            nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 76),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 14),
            nameLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30),
            
            image.topAnchor.constraint(equalTo: view.topAnchor),
            image.rightAnchor.constraint(equalTo: nameLabel.leftAnchor, constant: -16),
            image.leftAnchor.constraint(equalTo: view.leftAnchor),
            image.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            timerLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            timerLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            timerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 230),
            timerLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -6),
        ])
    }
}