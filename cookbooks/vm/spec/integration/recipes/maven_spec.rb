require 'spec_helper'

describe 'vm::maven' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html

  it 'installs Maven 3.5.0' do
    expect(command('bash -l -c "mvn --version"').stdout).to contain 'Apache Maven 3.5.0'
  end

  it 'sets M2_HOME correctly' do
    expect(command('bash -l -c "echo -n \$M2_HOME"').stdout).to eq '/usr/local/maven'
  end
  it 'sets MAVEN_OPTS to configure memory settings' do
    expect(command('bash -l -c "echo \$MAVEN_OPTS"').stdout).to contain '-Xmx384m'
  end
end
