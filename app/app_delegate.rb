class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @tabBarController = UITabBarController.new

    rootViewController = GoodnightViewController.new
    naviController = UINavigationController.alloc.initWithRootViewController(rootViewController)
    naviController.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemContacts, tag: 2)

    @tabBarController.viewControllers = [
      HelloViewController.new, GoodbyeViewController.new, naviController
    ]

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = @tabBarController
    @window.makeKeyAndVisible
    true
  end
end
