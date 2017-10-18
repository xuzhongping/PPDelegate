
Pod::Spec.new do |s|

  s.name         = "PPDelegate"
  s.version      = "0.1.2"
  s.summary      = "a tool of set more delegate"

  s.platform     = :ios, '6.0'
  s.ios.deployment_target = '6.0'
 
  s.description  = "设置多个监听者,完成事件的监听"

  s.homepage     = "https://github.com/JungHsu/PPDelegate"

  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author  = { "JungHsu" => "1021057927@qq.com" }

  s.source       = { :git => "https://github.com/JungHsu/PPDelegate.git", :tag => "#{s.version}" }
  s.source_files  = "PPDelegate/**/*.{h,m}"
  s.requires_arc = true

end
