Pod::Spec.new do |s|
  s.name             = 'FirebaseRemoteConfig'
  s.version='10.27.0'
  s.summary          = 'Firebase Remote Config'

  s.description      = <<-DESC
Firebase Remote Config is a cloud service that lets you change the
appearance and behavior of your app without requiring users to download an
app update.
                       DESC

  s.homepage         = 'https://firebase.google.com'
  s.license          = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.authors          = 'Google, Inc.'

  s.source           = {
    :git => 'https://github.com/firebase/firebase-ios-sdk.git',
    :tag => 'CocoaPods-10.27.0.nightly'
  }
  s.social_media_url = 'https://twitter.com/Firebase'
  ios_deployment_target = '11.0'
  osx_deployment_target = '10.13'
  tvos_deployment_target = '12.0'
  watchos_deployment_target = '6.0'

  s.swift_version = '5.3'

  s.ios.deployment_target = ios_deployment_target
  s.osx.deployment_target = osx_deployment_target
  s.tvos.deployment_target = tvos_deployment_target
  s.watchos.deployment_target = watchos_deployment_target

  s.cocoapods_version = '>= 1.12.0'
  s.prefix_header_file = false

  base_dir = "FirebaseRemoteConfig/Sources/"
  s.source_files = [
    base_dir + '**/*.[mh]',
    'Interop/Analytics/Public/*.h',
    'FirebaseABTesting/Sources/Private/*.h',
    'FirebaseCore/Extension/*.h',
    'FirebaseInstallations/Source/Library/Private/*.h',
    'FirebaseRemoteConfig/Swift/**/*.swift',
  ]
  s.public_header_files = base_dir + 'Public/FirebaseRemoteConfig/*.h'
  s.resource_bundles = {
    "#{s.module_name}_Privacy" => 'FirebaseRemoteConfig/Swift/Resources/PrivacyInfo.xcprivacy'
  }
  s.pod_target_xcconfig = {
    'GCC_C_LANGUAGE_STANDARD' => 'c99',
    'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}"'
  }
  s.dependency 'FirebaseABTesting', '~> 10.0'
  s.dependency 'FirebaseSharedSwift', '~> 10.0'
  s.dependency 'FirebaseCore', '~> 10.0'
  s.dependency 'FirebaseInstallations', '~> 10.0'
  s.dependency 'GoogleUtilities/Environment', '~> 7.8'
  s.dependency 'GoogleUtilities/NSData+zlib', '~> 7.8'
  s.dependency 'FirebaseRemoteConfigInterop', '~> 10.23'

  s.test_spec 'unit' do |unit_tests|
    unit_tests.scheme = { :code_coverage => true }
    unit_tests.platforms = {
      :ios => ios_deployment_target,
      :osx => osx_deployment_target,
      :tvos => tvos_deployment_target
    }
    # TODO(dmandar) - Update or delete the commented files.
    unit_tests.source_files =
        'FirebaseRemoteConfig/Tests/Unit/FIRRemoteConfigComponentTest.m',
        'FirebaseRemoteConfig/Tests/Unit/RCNConfigContentTest.m',
        'FirebaseRemoteConfig/Tests/Unit/RCNConfigDBManagerTest.m',
#        'FirebaseRemoteConfig/Tests/Unit/RCNConfigSettingsTest.m',
#        'FirebaseRemoteConfig/Tests/Unit/RCNConfigTest.m',
        'FirebaseRemoteConfig/Tests/Unit/RCNConfigExperimentTest.m',
        'FirebaseRemoteConfig/Tests/Unit/RCNConfigValueTest.m',
        'FirebaseRemoteConfig/Tests/Unit/RCNPersonalizationTest.m',
#        'FirebaseRemoteConfig/Tests/Unit/RCNRemoteConfig+FIRAppTest.m',
        'FirebaseRemoteConfig/Tests/Unit/RCNRemoteConfigTest.m',
#        'FirebaseRemoteConfig/Tests/Unit/RCNThrottlingTests.m',
        'FirebaseRemoteConfig/Tests/Unit/RCNTestUtilities.m',
        'FirebaseRemoteConfig/Tests/Unit/RCNUserDefaultsManagerTests.m',
        'FirebaseRemoteConfig/Tests/Unit/RCNTestUtilities.h',
        'FirebaseRemoteConfig/Tests/Unit/RCNInstanceIDTest.m',
        'FirebaseRemoteConfig/Tests/SwiftUnit/*.swift'
    # Supply plist custom plist testing.
    unit_tests.resources =
        'FirebaseRemoteConfig/Tests/Unit/Defaults-testInfo.plist',
        'FirebaseRemoteConfig/Tests/Unit/SecondApp-GoogleService-Info.plist',
        'FirebaseRemoteConfig/Tests/Unit/TestABTPayload.txt'
    unit_tests.requires_app_host = true
    unit_tests.dependency 'OCMock'
    unit_tests.requires_arc = true
  end

end
