Pod::Spec.new do |s|
  s.name             = "GuerillaMailAPI"
  s.version          = '1.0.1J2ObjC2.1.1'
  s.author           = { "Marcus Smith" => "m_badenochsmith@yahoo.co.uk" }
  s.source           = { :git => "https://github.com/laundrapp/GuerrillaMailAPI.git" }
  s.summary          = "Version 1.8.3 update translated via J2ObjC 2.0.5"
  s.homepage         = "https://github.com/kylepls/GuerrillaMailAPI"

  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.7'
  s.requires_arc = false

  s.source_files = 'gen/objc/**/*.{h,m}'
  s.exclude_files = 'gen/objc/*Test.{h,m}'
  s.resources = 'src/main/resources/*'

  s.dependency 'JSoup', '1.8.3.J2ObjC2.1.1'
  s.dependency 'CommonsIo', '2.4.J2ObjC2.1.1'

  s.public_header_files = 'gen/objc/**/*.h'
  s.header_mappings_dir = 'gen/objc/**'
  s.compiler_flags = '-Wno-nullability-completeness'

#  s.xcconfig = { 'HEADER_SEARCH_PATHS' => "\"${PODS_ROOT}/J2ObjC/dist/include\"" }

end
