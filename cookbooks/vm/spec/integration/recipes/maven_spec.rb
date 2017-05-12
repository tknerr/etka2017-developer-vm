require 'spec_helper'

describe 'vm::maven' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html

  it 'installs Maven 3.5.0' do
    expect(command('bash -l -c "mvn --version"').stdout).to contain 'Apache Maven 3.5.0'
  end
end
