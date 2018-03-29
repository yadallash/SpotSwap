import UIKit
import Firebase

class LaunchViewController: UIViewController {
    
    //view instance
    let launchView = LaunchView()

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(launchView)
        launchView.tutorialButton.addTarget(self, action: #selector(tutorialTapped), for: .touchUpInside)
        launchView.loginButton.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
        launchView.signUpButton.addTarget(self, action: #selector(signupTapped), for: .touchUpInside)
        configureNavBar()
        view.backgroundColor = .white
        setupLaunchView()
    }
    
    private func configureNavBar(){
        self.navigationController?.isNavigationBarHidden = true
    }
    private func setupLaunchView(){
        view.addSubview(launchView)
        launchView.snp.makeConstraints { (make) in
            make.edges.equalTo(view.snp.edges)
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        configureNavBar()
    }
    
    //MARK: - Button Actions
    @objc func tutorialTapped(_ sender: UIButton!) {
       print("tutorial tapped")
        let pageVC = PageViewController()
        //present(pageVC, animated: true, completion: nil)
        self.navigationController?.pushViewController(pageVC, animated: true)
    }
    
    @objc func loginTapped(_ sender: UIButton!) {
        print("login tapped!")
        let loginVC = LoginViewController()
        self.navigationController?.pushViewController(loginVC, animated: true)
    }
    
    @objc func signupTapped(_ sender: UIButton!) {
        print("signup tapped!")
        let signupVC = SignUpViewController()
        self.navigationController?.pushViewController(signupVC, animated: true)
    }
    
    
}

//    //MARK: - Segmentor Action
//    @objc func segmentorTapped(_ sender: UISegmentedControl) {
//        switch sender.selectedSegmentIndex {
//        case 0:
//            let loginVc = LoginViewController()
//            self.navigationController?.pushViewController(loginVc, animated: true)
//        default:
//            break
//            //TODO: Present signin
////            let signupVc =
////            present(SignupViewController, animated: true, completion: nil)
//        }
//    }



