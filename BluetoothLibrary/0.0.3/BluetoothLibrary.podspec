Pod::Spec.new do |s|
  s.name         = "BluetoothLibrary"
  s.version      = "0.0.3"
  s.summary      = "A short description of BluetoothLibrary."
  s.description  = <<-DESC
    A short description of BluetoothLibrary.
                   DESC
  s.homepage     = "https://github.com/dglmarty/cloudhearing-bluetooth-library"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Diguang" => "dglmarty@gmail.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "git@github.com:dglmarty/cloudhearing-bluetooth-library.git", :tag => "#{s.version}" }
  s.requires_arc = true
  s.default_subspec = '2825'

  s.subspec '2825' do |sp|
      sp.source_files  = 'Classes/2825', 'Classes/2825/**/*.{h,m}'
      sp.ios.vendored_library = 'Classes/2825/libBluetoothLibrary.a'
  end
  
  s.subspec '2819' do |sp|
      sp.source_files  = 'Classes/2819', 'Classes/2819/**/*.{h,m}'
      sp.ios.vendored_library = 'Classes/2819/libCGABluetoothLib.a'
      # 2819 蓝牙库存在兼容性问题，需要设置该属性
      # s.xcconfig = { 'ONLY_ACTIVE_ARCH[config=Release]' => 'YES', 'ONLY_ACTIVE_ARCH[config=Debug]' => 'NO' }
      sp.xcconfig = { 'ONLY_ACTIVE_ARCH' => 'YES' }
  end
end
