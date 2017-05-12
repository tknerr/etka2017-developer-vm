
#
# install maven
#
ark 'install maven' do
  name 'maven'
  version '3.5.0'
  url 'http://apache.mirrors.tds.net/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz'
  checksum 'beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034'
  has_binaries ['bin/mvn']
end

file '/etc/profile.d/maven.sh' do
  content <<~EOF
    export M2_HOME=/usr/local/maven
    export MAVEN_OPTS="-Dmaven.repo.local=$HOME/.m2/repository -Xmx384m"
    EOF
end
