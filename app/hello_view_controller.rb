class HelloViewController < UIViewController
  def init
    if super
      self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemSearch, tag: 0)
    end
    self
  end

  def loadView
    self.view = UIView.alloc.initWithFrame(UIScreen.mainScreen.applicationFrame)
    self.view.backgroundColor = UIColor.orangeColor
    @button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @button.setTitle('hello', forState: UIControlStateNormal)
    @button.frame = CGRectMake(60, 100, 200, 40) 
    self.view.addSubview @button
  end

  def viewDidLoad
    @button.addTarget(self, action: 'hello', forControlEvents: UIControlEventTouchUpInside)
  end

  def alertView(alert, clickedButtonAtIndex: index)
  end

  private
  def hello
    alert = UIAlertView.new
    alert.delegate = self
    alert.addButtonWithTitle('Close')
    alert.title = 'HELLO'
    alert.message = 'hello'
    alert.show
  end
end
