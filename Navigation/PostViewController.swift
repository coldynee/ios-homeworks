import UIKit

class PostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Новый пост"
        view.backgroundColor = .systemOrange
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "pencil.circle.fill"), style: .plain, target: self, action: #selector(didTapButton))
    }
    
    @objc private func didTapButton() {
        let infoViewController = InfoViewController()
        
        infoViewController.modalPresentationStyle = .formSheet
        infoViewController.modalTransitionStyle = .coverVertical
        present(infoViewController, animated: true)
        //navigationController?.pushViewController(infoViewController, animated: true)
    }
}
