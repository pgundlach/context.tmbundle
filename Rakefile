task :default => [:dist]


PKG_VERSION = 0.9
BUNDLE="context-tmbundle-#{PKG_VERSION}.dmg"
DESTPATH="/var/www/contextgarden.net/dl/support/textmate"

task :dist => [:clean] do
  makedirs "dist"
  cp_r "#{ENV['HOME']}/Desktop/ConTeXt.tmbundle/","dist"
  cp "readme.txt","dist"
  cp "changes.txt", "dist"
  sh "hdiutil create -srcfolder dist -volname 'ConTeXt TextMate Bundle' tmpvolume"
  sh "hdiutil convert -format UDZO -o #{BUNDLE} tmpvolume.dmg"
  rm_f "tmpvolume.dmg"
end

task :deploy => [:dist] do 
  sh "scp #{BUNDLE} root@vlinux:#{DESTPATH}"
  sh "ssh root@vlinux /opt/local/bin/finish-contextbundle-installation  #{PKG_VERSION}"
end

task :clean do
  rm_rf "dist"
  rm_f "tmpvolume.dmg"
  rm_f BUNDLE
end