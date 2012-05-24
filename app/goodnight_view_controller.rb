class GoodnightViewController < UIViewController
  def loadView
    self.title = 'GoodNight'
    self.view = UIView.alloc.initWithFrame(UIScreen.mainScreen.applicationFrame)
    self.view.backgroundColor = UIColor.orangeColor
    @button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @button.setTitle('goodnight', forState: UIControlStateNormal)
    @button.frame = CGRectMake(10, 0, 200, 40)
    self.view.addSubview @button
  end

  def viewDidLoad
    @button.addTarget(self, action: 'goodnight', forControlEvents: UIControlEventTouchUpInside)
  end

  private
  def goodnight
    self.title = 'zzz'
    viewCon = UIViewController.new
    viewCon.title = 'xyz'
    self.navigationController.pushViewController(viewCon, animated: true)
  end
end
