#
#  Be sure to run `pod spec lint ApplitomHelpers.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "ApplitomHelpers"
  s.version      = "0.0.1"
  s.summary      = "Helper Swift library from Applitom"

  s.description  = <<-DESC
                        This is a  Swift library which contains many kinds of general Swift code helpers
                   DESC

  s.homepage     = "http://applitom.com"
  s.license      = "MIT"

  s.author             = { "Tomer Shalom" => "applitom@gmail.com" }
  s.social_media_url   = "http://twitter.com/applitom"

  s.platform     = :ios, "9.1"
  s.swift_version = "4.2"

  s.source       = { :git => "https://github.com/Applitom/ApplitomHelpers.git", :tag => "#{s.version}" }
  s.source_files  = "ApplitomHelpers/**/*.{swift}"
end
