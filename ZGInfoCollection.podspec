Pod::Spec.new do |s|
  s.name         = "ZGInfoCollection"
  s.version      = "1.1.2"
  s.summary      = "优化代码，去掉不必要的警告"
  s.homepage     = "https://github.com/ScottZg/ZGInfoCollection"
  s.license      = "MIT"
  s.author             = { "ScottZg" => "scottzg@126.com" }
  s.source       = { :git => "https://github.com/ScottZg/ZGInfoCollection.git", :tag => "#{s.version}" }
  s.requires_arc = true
  s.platform    = :ios, "7.0"
  s.ios.deployment_target = "7.0"
  s.source_files  = "ZGInfoCollection/*.{h,m}"
end
