Pod::Spec.new do |s|
  s.name                    = 'FirebaseSharedSwift'
  s.version='10.3.0'
  s.summary                 = 'Shared Swift Extensions for Firebase'

  s.description      = <<-DESC
This pod provides capabilities like Codable support that is shared by multiple
Firebase products. FirebaseSharedSwift is not supported for non-Firebase usage.
                       DESC


  s.homepage                = 'https://developers.google.com/'
  s.license                 = { :type => 'Apache-2.0', :file => 'FirebaseSharedSwift/LICENSE' }
  s.authors                 = 'Google, Inc.'

  s.source                  = {
    :git => 'https://github.com/Firebase/firebase-ios-sdk.git',
    :tag => 'CocoaPods-10.3.0.nightly'
  }

  s.swift_version           = '5.3'

  ios_deployment_target = '11.0'
  osx_deployment_target = '10.13'
  tvos_deployment_target = '12.0'
  watchos_deployment_target = '6.0'

  s.ios.deployment_target = ios_deployment_target
  s.osx.deployment_target = osx_deployment_target
  s.tvos.deployment_target = tvos_deployment_target
  s.watchos.deployment_target = watchos_deployment_target

  s.cocoapods_version       = '>= 1.4.0'
  s.prefix_header_file      = false

  s.source_files = [
    'FirebaseSharedSwift/Sources/**/*.swift',
  ]

  s.test_spec 'unit' do |unit_tests|
    unit_tests.platforms = {
      :ios => ios_deployment_target,
      :osx => osx_deployment_target,
      :tvos => tvos_deployment_target
    }
    unit_tests.source_files = [
      'FirebaseSharedSwift/Tests/**/*.swift',
    ]
  end
end
