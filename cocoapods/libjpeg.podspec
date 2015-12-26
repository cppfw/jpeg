Pod::Spec.new do |s|
  s.name         = "libjpeg"
  s.version      = "6.1.1"
  s.summary      = "JPEG library."
  s.homepage     = "https://github.com/igagis/libjpeg"
  s.license      = 'https://raw.githubusercontent.com/igagis/libjpeg/master/LICENSE.txt'
  s.author       = { "IJG" => "ijg.org" }
  s.platform     = :ios, "7.0"
  
  s.source = { :git => "https://github.com/igagis/libjpeg.git", :tag => s.version }

  s.source_files  = "jpeg/*.{h}", "jpeg/{jcapimin.c,jcapistd.c,jccoefct.c,jccolor.c,jcdctmgr.c,jchuff.c,jcinit.c,jcmainct.c,jcmarker.c,jcmaster.c,jcomapi.c,jcparam.c,jcphuff.c,jcprepct.c,jcsample.c,jctrans.c,jdapimin.c,jdapistd.c,jdatadst.c,jdatasrc.c,jdcoefct.c,jdcolor.c,jddctmgr.c,jdhuff.c,jdinput.c,jdmainct.c,jdmarker.c,jdmaster.c,jdmerge.c,jdphuff.c,jdpostct.c,jdsample.c,jdtrans.c,jerror.c,jfdctflt.c,jfdctfst.c,jfdctint.c,jidctflt.c,jidctred.c,jquant1.c,jquant2.c,jutils.c,jmemmgr.c,jmemansi.c,jidctint.c,jidctfst.c}"
end
