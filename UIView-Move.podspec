Pod::Spec.new do |s|
  s.name         	= 'UIView-Move'
  s.version      	= '0.0.1'
  s.authors 		= {'Onur Ersel' => 'onurersel@gmail.com'} 
  s.social_media_url = 'https://twitter.com/ethestel'
  s.license 		= { :type => 'MIT', :file => 'LICENSE' }
  s.homepage		= 'https://github.com/onurersel/UIView-Move'
  s.source 			= {:git => 'https://github.com/onurersel/UIView-Move.git', :tag => s.version}
  s.summary 		= 'UIView category which changes frame values with single parameter rather than assigning CGRects'

  s.ios.deployment_target = "6.0"
  s.tvos.deployment_target = "9.0"

  s.requires_arc 	= true
  s.source_files 	= "UIView+Move.{h,m}"
end