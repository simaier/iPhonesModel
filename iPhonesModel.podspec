
Pod::Spec.new do |s|

s.name         = "iPhonesModel"
s.version      = "1.0.8"
s.summary      = "Through the way of protocol to judge the model."
s.homepage     = "https://github.com/simaier/iPhonesModel"
s.license      = "MIT"
s.author             = { "SiMaiEr" => "simaier1231@gmial.com" }
s.source       = { :git => "https://github.com/simaier/iPhonesModel.git", :tag => "#{s.version}" }
s.requires_arc = true
s.ios.deployment_target = "9.0"
s.source_files  = "iModel/UIDevice_Extension.swift"
s.swift_version = '4.0'
end
