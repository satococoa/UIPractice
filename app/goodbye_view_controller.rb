class GoodbyeViewController < UIViewController
  def init
    if super
      self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemBookmarks, tag: 1)
    end
    super
  end

  def loadView
    self.view = UIView.alloc.initWithFrame(UIScreen.mainScreen.applicationFrame)
    self.view.backgroundColor = UIColor.orangeColor
    @button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @button.setTitle('goodbye', forState: UIControlStateNormal)
    @button.frame = CGRectMake(10, 0, 200, 40)
    self.view.addSubview @button
  end

  def viewDidLoad
    @button.addTarget(self, action: 'goodbye', forControlEvents: UIControlEventTouchUpInside)
  end

  def alertView(alert, clickedButtonAtIndex: index)
  end

  private
  def goodbye
    alert = UIAlertView.new
    alert.delegate = self
    alert.addButtonWithTitle('Close')
    alert.title = 'GoodBye'
    alert.message = 'good bye'
    alert.show
  end
end
