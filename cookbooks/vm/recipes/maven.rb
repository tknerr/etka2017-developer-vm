
#
# install maven
#
mvn_version = '3.5.0'
mvn_checksum = 'beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034'

remote_file 'download maven tarball' do
  source "http://apache.mirrors.tds.net/maven/maven-3/#{mvn_version}/binaries/apache-maven-#{mvn_version}-bin.tar.gz"
  checksum mvn_checksum
  path "#{Chef::Config[:file_cache_path]}/maven-#{mvn_version}.tar.gz"
end

execute 'extract maven tarball' do
  command "tar xzvf #{Chef::Config[:file_cache_path]}/maven-#{mvn_version}.tar.gz"
  cwd "/usr/local"
  creates "/usr/local/apache-maven-#{mvn_version}/bin/mvn"
end

link '/usr/local/maven' do
  to "/usr/local/apache-maven-#{mvn_version}"
end

file '/etc/profile.d/maven.sh' do
  content <<~EOF
    export PATH=/usr/local/maven/bin:$PATH
    EOF
end
