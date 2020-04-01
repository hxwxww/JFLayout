Pod::Spec.new do |s|

  s.name            = 'JFLayout'
  s.version         = '0.0.3'
  s.summary         = 'A simple way to use Auto Layout'

  s.homepage        = 'https://github.com/hxwxww/JFLayout.git'
  s.license         = 'MIT'

  s.author          = { 'hxwxww' => 'hxwxww@163.com' }
  s.platform        = :ios, '9.0'
  s.swift_version   = '5.0'

  s.source          = { :git => 'https://github.com/hxwxww/JFLayout.git', :tag => s.version }

  s.source_files    = 'Sources/*.swift'

  s.frameworks      = 'Foundation', 'UIKit'

end
