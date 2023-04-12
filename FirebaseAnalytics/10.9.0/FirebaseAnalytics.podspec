Pod::Spec.new do |s|
    s.name             = 'FirebaseAnalytics'
    s.version='10.9.0'
    s.summary          = 'Firebase Analytics for iOS'

    s.description      = <<-DESC
    Firebase Analytics is a free, out-of-the-box analytics solution that
    inspires actionable insights based on app usage and user engagement.
    DESC

    s.homepage         = 'https://firebase.google.com/features/analytics/'
    s.license          = { :type => 'Copyright', :text => 'Copyright 2022 Google' }
    s.authors          = 'Google, Inc.'

    s.source           = {
        :http => 'https://dl.google.com/firebase/ios/analytics/5f0d532a0eb9e9ca/FirebaseAnalytics-10.8.0.tar.gz'
    }

    s.cocoapods_version = '>= 1.10.0'
    s.swift_version     = '5.3'

    s.ios.deployment_target  = '10.0'
    s.osx.deployment_target  = '10.13'
    s.tvos.deployment_target = '12.0'

    s.libraries  = 'c++', 'sqlite3', 'z'
    s.frameworks = 'StoreKit'

    s.dependency 'FirebaseCore', '~> 10.0'
    s.dependency 'FirebaseInstallations', '~> 10.0'
    s.dependency 'GoogleUtilities/AppDelegateSwizzler', '~> 7.8'
    s.dependency 'GoogleUtilities/MethodSwizzler', '~> 7.8'
    s.dependency 'GoogleUtilities/NSData+zlib', '~> 7.8'
    s.dependency 'GoogleUtilities/Network', '~> 7.8'
    s.dependency 'nanopb', '>= 2.30908.0', '< 2.30910.0'

    s.default_subspecs = 'AdIdSupport'

    s.subspec 'AdIdSupport' do |ss|
        ss.dependency 'GoogleAppMeasurement', '10.8.0'
        ss.vendored_frameworks = 'Frameworks/FirebaseAnalytics.xcframework'
    end

    s.subspec 'WithoutAdIdSupport' do |ss|
        ss.dependency 'GoogleAppMeasurement/WithoutAdIdSupport', '10.8.0'
        ss.vendored_frameworks = 'Frameworks/FirebaseAnalytics.xcframework'
    end

end
