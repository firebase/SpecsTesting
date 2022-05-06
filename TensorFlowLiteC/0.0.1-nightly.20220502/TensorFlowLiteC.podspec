Pod::Spec.new do |s|
  s.name             = 'TensorFlowLiteC'
  s.version          = '0.0.1-nightly.20220502'
  s.authors          = 'Google Inc.'
  s.license          = { :type => 'Apache' }
  s.homepage         = 'https://github.com/tensorflow/tensorflow'
  s.source           = { :http => "https://dl.google.com/dl/firebase/ios/paul-test/TFL.zip" }
  s.summary          = 'TensorFlow Lite'
  s.description      = <<-DESC
 
  An internal-only pod containing the TensorFlow Lite C library that the public
  `TensorFlowLiteSwift` and `TensorFlowLiteObjC` pods depend on. This pod is not
  intended to be used directly. Swift developers should use the
  `TensorFlowLiteSwift` pod and Objective-C developers should use the
  `TensorFlowLiteObjC` pod.
                       DESC
 
  s.ios.deployment_target = '11.0'
 
  s.module_name = 'TensorFlowLiteC'
  s.library = 'c++'
 
  s.default_subspec = 'Core'
 
  s.subspec 'Core' do |core|
    core.vendored_frameworks = 'Frameworks/TensorFlowLiteC.xcframework'
  end
end