Pod::Spec.new do |s|
  s.name         = "hydra-dependency"
  s.version      = "0.0.1"
  s.summary      = "open source c/c++ libraries."
  s.description  = <<-DESC
                   open source c/c++ libraries.
                   DESC
  s.homepage     = "https://github.com/HydraFramework/HydraDependencyPods"
  s.license      = "MIT"
  s.author       = { "samchang" => "sam.chang@me.com" }
  s.platform     = :ios, "5.1.1"
  s.source       = { :git => "https://github.com/HydraFramework/HydraDependencyPods.git", :tag => "v1.0-beta" }
  s.source_files  = "ThirdParts", "ThirdParts/Box2D/**/*.{h,c,cpp}", "ThirdParts/Lua/**/*.{h,c}", "ThirdParts/sqlcipher/*.{h,c}", "ThirdParts/*.{h,c}"
  s.exclude_files = "ThirdParts/Lua/lua.c", "ThirdParts/Lua/luac.c"
  s.libraries = "curl"
  s.requires_arc = false
  s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SRCROOT)/hydra-dependency/ThirdParts", "OTHER_CFLAGS" => <<-DESC
-DHAVE_CONFIG_H -DLUA_USER_H="<luauser.h>" -DOPENSSL_NO_MD2 -DLUA_COMPAT_ALL -DSQLITE_HAS_CODEC
DESC
 }
  s.dependency "OpenSSL-Universal", "~> 1.0.1.h"
end
