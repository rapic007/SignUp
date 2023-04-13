import UIKit

class CreatingTaskController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScreen()
        
        
        
    }
    
    
    func setupScreen() {
        view.backgroundColor = UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1)
        title = "Создание новой задачи"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName:"chevron.backward"),
                                                           style:.plain,
                                                           target: self,
                                                           action: #selector(buttonTapped))
        navigationController?.navigationBar.tintColor = .black
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        appearance.titleTextAttributes = [.foregroundColor: UIColor(red: 0.208, green: 0.208, blue: 0.208, alpha: 1)]
        navigationItem.scrollEdgeAppearance = appearance
        navigationItem.compactAppearance = appearance
        
        
       
      
        
    }
    
    @objc
    func buttonTapped() {
        dismiss(animated: true)
    }
}
