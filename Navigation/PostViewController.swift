import UIKit

class PostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemOrange
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "pencil.circle.fill"), style: .plain, target: self, action: #selector(didTapButton))
    }
    
    @objc private func didTapButton(_ sender: UIButton) {
        let infoViewController = InfoViewController()
        
        infoViewController.modalPresentationStyle = .overCurrentContext //.formSheet
        infoViewController.modalTransitionStyle = .coverVertical//.coverVertical
        present(infoViewController, animated: true, completion: nil)
        //navigationController?.pushViewController(infoViewController, animated: true)
    }
}
