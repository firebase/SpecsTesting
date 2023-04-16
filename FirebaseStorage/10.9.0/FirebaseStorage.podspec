Pod::Spec.new do |s|
  s.name             = 'FirebaseStorage'
  s.version='10.9.0'
  s.summary          = 'Firebase Storage'

  s.description      = <<-DESC
Firebase Storage provides robust, secure file uploads and downloads from Firebase SDKs, powered by Google Cloud Storage.
                       DESC

  s.homepage         = 'https://firebase.google.com'
  s.license          = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.authors          = 'Google, Inc.'

  s.source           = {
    :git => 'https://github.com/firebase/firebase-ios-sdk.git',
    :tag => 'CocoaPods-10.9.0.nightly'
  }
  s.social_media_url = 'https://twitter.com/Firebase'

  ios_deployment_target = '11.0'
  osx_deployment_target = '10.13'
  tvos_deployment_target = '12.0'
  watchos_deployment_target = '6.0'

  s.ios.deployment_target = ios_deployment_target
  s.osx.deployment_target = osx_deployment_target
  s.tvos.deployment_target = tvos_deployment_target
  s.watchos.deployment_target = watchos_deployment_target

  s.swift_version = '5.3'

  s.cocoapods_version = '>= 1.4.0'
  s.prefix_header_file = false

  s.source_files = [
    'FirebaseStorage/Sources/**/*.swift',
    'FirebaseStorage/Typedefs/*.h',
  ]

  s.dependency 'FirebaseAppCheckInterop', '~> 10.0'
  s.dependency 'FirebaseAuthInterop', '~> 10.0'
  s.dependency 'FirebaseCore', '~> 10.0'
  s.dependency 'FirebaseCoreExtension', '~> 10.0'
  s.dependency 'GTMSessionFetcher/Core', '>= 2.1', '< 4.0'

  s.test_spec 'ObjCIntegration' do |objc_tests|
    objc_tests.scheme = { :code_coverage => true }
    objc_tests.platforms = {
      :ios => ios_deployment_target,
      :osx => osx_deployment_target,
      :tvos => tvos_deployment_target
    }
    objc_tests.source_files = [
      'FirebaseStorage/Tests/ObjCIntegration/*.{m,mm}',
    ]
    objc_tests.requires_app_host = true
    objc_tests.resources = 'FirebaseStorage/Tests/Integration/Resources/1mb.dat',
                          'FirebaseStorage/Tests/Integration/Resources/GoogleService-Info.plist'
    objc_tests.dependency 'FirebaseAuth', '~> 10.0'
    objc_tests.pod_target_xcconfig = {
      'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}"'
    }
  end

  s.test_spec 'unit' do |unit_tests|
    unit_tests.scheme = { :code_coverage => true }
    unit_tests.platforms = {
      :ios => ios_deployment_target,
      :osx => osx_deployment_target,
      :tvos => tvos_deployment_target
    }
    unit_tests.source_files = 'FirebaseStorage/Tests/Unit/StorageAPITests.swift'
  end

  s.test_spec 'integration' do |int_tests|
    int_tests.scheme = { :code_coverage => true }
    int_tests.platforms = {
      :ios => ios_deployment_target,
      :osx => osx_deployment_target,
      :tvos => tvos_deployment_target
    }
    int_tests.source_files = 'FirebaseStorage/Tests/Integration/*.swift'
    int_tests.requires_app_host = true
    int_tests.resources = 'FirebaseStorage/Tests/Integration/Resources/1mb.dat',
                          'FirebaseStorage/Tests/Integration/Resources/GoogleService-Info.plist',
                          'FirebaseStorage/Tests/Integration/Resources/HomeImprovement.numbers'
    int_tests.dependency 'FirebaseAuth', '~> 10.0'
  end
end
