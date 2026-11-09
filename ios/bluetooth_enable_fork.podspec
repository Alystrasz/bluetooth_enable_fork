#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint bluetooth_enable_fork.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'bluetooth_enable_fork'
  s.version          = '0.1.8'
  s.summary          = 'Flutter plugin to turn on bluetooth within app'
  s.description      = <<-DESC
Flutter plugin to turn on bluetooth within app
                       DESC
  s.homepage         = 'https://github.com/Alystrasz/bluetooth_enable_fork'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'bluetooth_enable_fork/Sources/bluetooth_enable_fork/**/*.swift'
  s.dependency 'Flutter'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
