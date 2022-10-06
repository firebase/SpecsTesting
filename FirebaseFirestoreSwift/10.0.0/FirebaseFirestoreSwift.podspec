#
# Be sure to run `pod lib lint FirebaseFirestoreSwift.podspec' to ensure this is a
# valid spec before submitting.
#

Pod::Spec.new do |s|
  s.name                    = 'FirebaseFirestoreSwift'
  s.version='10.0.0'
  s.summary                 = 'Swift Extensions for Google Cloud Firestore'

  s.description      = <<-DESC
Google Cloud Firestore is a NoSQL document database built for automatic scaling, high performance, and ease of application development.
                       DESC

  s.homepage                = 'https://developers.google.com/'
  s.license                 = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.authors                 = 'Google, Inc.'

  s.source                  = {
    :git => 'https://github.com/Firebase/firebase-ios-sdk.git',
    :tag => 'CocoaPods-10.0.0.nightly'
  }

  s.swift_version           = '5.3'
  s.ios.deployment_target   = '11.0'
  s.osx.deployment_target   = '10.13'
  s.tvos.deployment_target  = '12.0'

  s.cocoapods_version       = '>= 1.4.0'
  s.prefix_header_file      = false

  s.requires_arc            = true
  s.source_files = [
    'Firestore/Swift/Source/**/*.swift',
  ]

  s.dependency 'FirebaseCoreExtension', '~> 10.0'
  s.dependency 'FirebaseFirestore', '~> 10.0'
  s.dependency 'FirebaseSharedSwift', '~> 10.0'

end
