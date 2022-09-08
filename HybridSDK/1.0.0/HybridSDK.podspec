#
#  Be sure to run `pod spec lint Hybrid.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

spec.name         = "HybridSDK"
spec.version      = "1.0.0"
spec.summary      = "This is Hybrid lib"

spec.description  =  "This is Hybrid lib"

spec.homepage     = "https://www.airmeet.com/"


spec.author             = { "abhayam rastogi" => "abhayam.rastogi@airmeet.com" }



spec.platform     = :ios
spec.platform     = :ios, "13.0"


spec.source = { :git => "git@github.com:airmeet/hybrid-sdk-ios.git", :tag => "#{spec.version}" }


spec.source_files  = "HybridSDK/**/*.{h,m,swift}"

spec.swift_version = '5.0'

spec.dependency 'GoogleMLKit/BarcodeScanning', '3.2.0'
   

spec.pod_target_xcconfig = {
'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
}
spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
