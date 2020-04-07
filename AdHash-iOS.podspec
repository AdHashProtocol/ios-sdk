Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '10.0'
s.name = "ios-sdk"
s.summary = "Library for AdHash using."
s.requires_arc = true

s.version = "1.5.2"

s.authors = { 'Dima Senchik' => 'dmitriy.senchik@gmail.com' }

s.homepage = "https://github.com/AdHashProtocol/ios-sdk"

s.source = { :git => "https://github.com/AdHashProtocol/ios-sdk.git",
             :tag => "#{s.version}" }

s.source_files = "ios-sdk/**/*.{swift}"

s.resources = [ 'ios-sdk/CoreData/Resources/RecentAdModel.xcdatamodeld','ios-sdk/CoreData/Resources/RecentAdModel.xcdatamodeld/*.xcdatamodel', 'ios-sdk/Services/Decryption/index.html', 'ios-sdk/Resources/adhashLogo.png']

s.swift_version = "5.0"

end