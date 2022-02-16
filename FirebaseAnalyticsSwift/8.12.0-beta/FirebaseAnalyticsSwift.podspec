Pod::Spec.new do |s|
  s.name                    = 'FirebaseAnalyticsSwift'
  s.version                 = '8.12.0-beta'
  s.summary                 = 'Swift Extensions for Firebase Analytics'

  s.description      = <<-DESC
Firebase Analytics is a free, out-of-the-box analytics solution that inspires actionable insights based on app usage and user engagement.
                       DESC

  s.homepage                = 'https://firebase.google.com/features/analytics/'
  s.license                 = { :type => 'Apache', :file => 'LICENSE' }
  s.authors                 = 'Google, Inc.'

  s.source                  = {
    :git => 'https://github.com/Firebase/firebase-ios-sdk.git',
    :tag => 'CocoaPods-8.12.1.nightly'
  }

  s.static_framework        = true
  s.swift_version           = '5.3'
  s.ios.deployment_target   = '13.0'
  s.osx.deployment_target   = '10.15'
  s.tvos.deployment_target  = '13.0'

  s.cocoapods_version       = '>= 1.10.0'
  s.prefix_header_file      = false

  s.source_files = [
    'FirebaseAnalyticsSwift/Sources/*.swift',
  ]

  s.dependency 'FirebaseAnalytics', '~> 8.9'
end
