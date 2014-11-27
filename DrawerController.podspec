Pod::Spec.new do |s|
  s.name = 'DrawerController'
  s.version = '0.1.0'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage = 'https://github.com/sascha/DrawerController'
  s.authors = { 'Sascha Schwabbauer' => 'sascha@evolved.io',
  				'Malte Baumann' => 'malte@codingdivision.com' }
  s.summary = 'A lightweight, easy-to-use side drawer navigation controller.'
  s.social_media_url = 'http://twitter.com/_saschas'
  s.source = { :git => 'https://github.com/sascha/DrawerController.git', :tag => '0.1.0' }

  s.ios.deployment_target = '8.0'

  s.subspec 'Core' do |ss|
    ss.source_files = 'DrawerController/DrawerController.swift'
    ss.framework  = 'QuartzCore'
  end
  
  s.subspec 'DrawerVisualStates' do |ss|
      ss.source_files = 'DrawerController/DrawerBarButtonItem.swift', 'DrawerController/AnimatedMenuButton.swift', 'DrawerController/DrawerVisualState.swift'
      ss.dependency 'DrawerController/Core'
    end
end
