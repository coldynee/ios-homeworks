import UIKit

class FeedViewController: UIViewController {
    
    var post = Post(title: "New post")

    override func viewDidLoad() {
        super.viewDidLoad()
        myButton()
    }
    
    func myButton(){
        let button = UIButton(frame: CGRect(x: 100, y: 50, width: 160, height: 50))
        view.addSubview(button)
        button.setTitle("Button", for: .normal)
        button.backgroundColor = .orange
        button.center = view.center
        button.layer.cornerRadius = 12
        button.layer.masksToBounds = true
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }
    
    @objc func buttonAction(_ sender: UIButton) {
        let postViewController = PostViewController()
        postViewController.title = post.title
        navigationController?.pushViewController(postViewController, animated: true)
    }
    
}
