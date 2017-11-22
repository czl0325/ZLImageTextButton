#
#  Be sure to run `pod spec lint ZLImageTextButton.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "ZLImageTextButton"
  s.version      = "0.0.1"
  s.summary      = "ZLImageTextButton for UIButton"
  s.description  = <<-DESC
                      图文按钮，支持autolayout，图左文右，图右文左，图上文下，图下文上。
                   DESC
  s.platform     = :ios, "7.0"
  s.homepage     = "https://github.com/czl0325/ZLImageTextButton.git"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "陈昭良" => "295183917@qq.com" }
  s.source       = { :git => "https://github.com/czl0325/ZLImageTextButton.git", :tag => "#{s.version}" }
  s.source_files = "ZLImageTextButton", "ZLImageTextButton/ZLImageTextButton/*.{h,m}"
  s.requires_arc = true
end
