
#
# install eclipse
#

ark 'install eclipse' do
  name 'eclipse'
  version 'neon'
  url 'http://ftp.heanet.ie/pub/eclipse/technology/epp/downloads/release/neon/R/eclipse-java-neon-R-linux-gtk-x86_64.tar.gz'
  checksum 'ca06e10df42eab462f130aa89658f9c75f1df61ba79ede02fb7bb748f4544c34'
  has_binaries ['eclipse']
end
