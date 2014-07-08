#
#  Be sure to run `pod spec lint NSString+Hex.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "NSString+Hex"
  s.version      = "0.0.1"
  s.summary      = "Hexadecimal utilities category on NSString class."
  s.homepage     = "https://github.com/bensarz/NSString-HEX"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Benoit Sarrazin" => "bensarz@gmail.com" }
  s.social_media_url   = "http://twitter.com/bensarz"
  s.ios.deployment_target = "5.0"
  s.osx.deployment_target = "10.7"
  s.source       = { :git => "https://github.com/bensarz/NSString-HEX.git", :tag => "0.0.1" }
  s.source_files  = "NSString+Hex-Pod", "NSString+Hex-Pod/**/*.{h,m}"
  s.public_header_files = "NSString+Hex-Pod/**/*.h"
  s.framework  = "Foundation"
  s.requires_arc = true

end
