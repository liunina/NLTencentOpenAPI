Pod::Spec.new do |s|
  s.name             = 'NLTencentOpenAPI'
  s.version          = '3.3.8'
  s.summary          = 'The Official iOS SDK of Tencent Open API.'

  s.description      = <<-DESC
  封装 NLTencentOpenAPI 版本为3.3.8
  V3.3.8功能亮点介绍：
  ·新增打印日志接口，第三方可主动调用将日志信息打印到第三方的日志中，供日后定位问题使用
  ·新增支持设置opensdk只使用UniversalLink模式与手机QQ交互（系统要求大于等于iOS9）
                       DESC

  s.author       = 'http://open.qq.com'
  s.homepage     = 'http://open.qq.com'
  s.license      = {
	  :type => 'LGPL',
	  :file => "LICENSE"
  }
  s.source           = { :git => 'https://github.com/liunina/NLTencentOpenAPI.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.requires_arc = true
  
  s.source_files   = "NLTencentOpenAPI/TencentOpenAPI.framework/Headers/**/*.h"
  s.vendored_frameworks = 'NLTencentOpenAPI/TencentOpenAPI.framework'
  
  s.libraries = 'iconv', 'z', 'c++', 'sqlite3'
  s.frameworks = 'Security', 'SystemConfiguration', 'CoreGraphics', 'CoreTelephony', 'WebKit'

end
