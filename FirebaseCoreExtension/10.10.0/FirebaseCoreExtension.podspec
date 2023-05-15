Pod::Spec.new do |s|
    s.name             = 'FirebaseCoreExtension'
    s.version='10.10.0'
    s.summary          = 'Extended FirebaseCore APIs for Firebase product SDKs'

    s.description      = <<-DESC
    Not for public use.
    Common FirebaseCore APIs for use in Firebase product SDKs.
    When depending on `FirebaseCoreExtension`, also depend on `FirebaseCore` to
    avoid potential linker issues.
                         DESC

    s.homepage         = 'https://firebase.google.com'
    s.license          = { :type => 'Apache-2.0', :file => 'LICENSE' }
    s.authors          = 'Google, Inc.'

    s.source           = {
      :git => 'https://github.com/firebase/firebase-ios-sdk.git',
      :tag => 'CocoaPods-10.10.0.nightly'
    }
    s.social_media_url = 'https://twitter.com/Firebase'

    s.swift_version = '5.3'

    s.ios.deployment_target = '10.0'
    s.osx.deployment_target = '10.13'
    s.tvos.deployment_target = '12.0'
    s.watchos.deployment_target = '6.0'

    s.source_files = 'FirebaseCore/Extension/*.[hm]'
    s.public_header_files = 'FirebaseCore/Extension/*.h'

    s.dependency 'FirebaseCore', '~> 10.0'
  end
