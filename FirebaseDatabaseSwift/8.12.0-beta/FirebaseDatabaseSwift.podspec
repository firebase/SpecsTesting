Pod::Spec.new do |s|
  s.name                    = 'FirebaseDatabaseSwift'
  s.version                 = '8.12.0-beta'
  s.summary                 = 'Swift Extensions for Firebase Realtime Database'

  s.description      = <<-DESC
Simplify your iOS development, grow your user base, and monetize more effectively with Firebase.
                       DESC

  s.homepage                = 'https://developers.google.com/'
  s.license                 = { :type => 'Apache', :file => 'LICENSE' }
  s.authors                 = 'Google, Inc.'

  s.source                  = {
    :git => 'https://github.com/Firebase/firebase-ios-sdk.git',
    :tag => 'CocoaPods-8.12.1.nightly'
  }

  s.swift_version           = '5.3'
  s.ios.deployment_target   = '10.0'
  s.osx.deployment_target   = '10.12'
  s.tvos.deployment_target  = '10.0'

  s.cocoapods_version       = '>= 1.4.0'
  s.prefix_header_file      = false

  s.source_files = [
    'FirebaseDatabaseSwift/Sources/**/*.swift',
  ]

  s.dependency 'FirebaseDatabase', '~> 8.0'
  s.dependency 'FirebaseSharedSwift', '~> 8.11'
end
