require 'spec_helper'

describe 'vm::java' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html

  it 'installs Oracle Java 8u131' do
    expect(command('java -version').stderr).to contain 'java version "1.8.0_131"'
  end
  it 'sets JAVA_HOME correctly' do
    expect(command('bash -l -c "echo -n \$JAVA_HOME"').stdout).to eq '/usr/lib/jvm/java-8-oracle-amd64'
  end
end
