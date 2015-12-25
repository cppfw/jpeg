Pod::Spec.new do |s|
  s.name         = "libjpeg"
  s.version      = "6.1.0"
  s.summary      = "JPEG library."
  s.homepage     = "https://github.com/igagis/libjpeg"
  s.license      = 'https://raw.githubusercontent.com/igagis/libjpeg/master/LICENSE.txt'
  s.author       = { "IJG" => "ijg.org" }
  s.platform     = :ios, "7.0"
  
  s.source = { :git => "https://github.com/igagis/libjpeg.git", :tag => s.version }

  s.source_files  = "jpeg/*.{h,c}"
end
