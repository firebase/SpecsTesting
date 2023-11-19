Pod::Spec.new do |s|
  s.name             = 'FirebaseCoreInternal'
  s.version='10.19.0'
  s.summary          = 'APIs for internal FirebaseCore usage.'

  s.description      = <<-DESC
  Not for public use.
  Common APIs for internal FirebaseCore usage.
                       DESC

  s.homepage         = 'https://firebase.google.com'
  s.license          = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.authors          = 'Google, Inc.'

  s.source           = {
    :git => 'https://github.com/firebase/firebase-ios-sdk.git',
    :tag => 'CocoaPods-10.19.0.nightly'
  }
  s.social_media_url = 'https://twitter.com/Firebase'

  ios_deployment_target = '10.0'
  osx_deployment_target = '10.13'
  tvos_deployment_target = '12.0'
  watchos_deployment_target = '6.0'

  s.ios.deployment_target = ios_deployment_target
  s.osx.deployment_target = osx_deployment_target
  s.tvos.deployment_target = tvos_deployment_target
  s.watchos.deployment_target = watchos_deployment_target

  s.source_files = [
    'FirebaseCore/Internal/Sources/**/*.swift'
  ]

  s.swift_version = '5.3'

  s.dependency 'GoogleUtilities/NSData+zlib', '~> 7.8'

  s.test_spec 'Unit' do |unit_tests|
    unit_tests.scheme = { :code_coverage => true }
    unit_tests.platforms = {
      :ios => ios_deployment_target,
      :osx => osx_deployment_target,
      :tvos => tvos_deployment_target
    }
    unit_tests.source_files = [
      'FirebaseCore/Internal/Tests/Unit/**/*.swift',
      'FirebaseCore/Internal/Tests/Common/**/*.swift',
    ]
    unit_tests.requires_app_host = true
  end

  s.test_spec 'Integration' do |int_tests|
    int_tests.scheme = { :code_coverage => true }
    int_tests.platforms = {
      :ios => ios_deployment_target,
      :osx => osx_deployment_target,
      :tvos => tvos_deployment_target
    }

    int_tests.source_files = [
      'FirebaseCore/Internal/Tests/Integration/**/*.swift',
      'FirebaseCore/Internal/Tests/Common/**/*.swift',
    ]
    int_tests.requires_app_host = true
  end
end
