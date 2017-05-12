
#
# install eclipse
#

ark 'install eclipse' do
  name 'eclipse'
  version 'neon'
  url 'http://ftp.heanet.ie/pub/eclipse/technology/epp/downloads/release/neon/R/eclipse-jee-neon-R-linux-gtk-x86_64.tar.gz'
  checksum '3a97e2b9e99b09cb6b18bc22fab05977838618999fe62051e52352ae9f00b8f1'
  has_binaries ['eclipse']
end
