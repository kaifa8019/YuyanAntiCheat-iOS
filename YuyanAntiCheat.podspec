Pod::Spec.new do |s|
  s.name                = 'YuyanAntiCheat'
  s.version             = '0.2.0'
  s.summary             = 'YuyanAntiCheat for iOS'
  s.homepage            = 'https://github.com/kaifa8019/YuyanAntiCheat-iOS'
  s.license             = { :type => 'Commercial', :text => '艾狄墨搏' }
  s.author              = { 'YuyanAntiCheat Team' => 'baiguo@admobile.top' }
  s.platform            = :ios, '9.0'
  s.source              = { :git => 'https://github.com/kaifa8019/YuyanAntiCheat-iOS.git', :tag => s.version.to_s }
  s.requires_arc        = true

  s.vendored_frameworks = ['YuyanAntiCheat.framework']
  
  s.frameworks = ["UIKit"]
  s.libraries = ["c++"]
  
  s.dependency 'ADMobGenDeviceInfo'
  s.dependency 'ADSuyiKit'
  s.dependency 'ADSuyiNetwork'
  s.dependency 'ADSuyiLocationManager'
end