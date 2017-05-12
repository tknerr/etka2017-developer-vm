require 'spec_helper'

describe 'vm::eclipse' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html

  it 'installs Eclipse Neon 4.6.0' do
    expect(command('which eclipse').stdout.strip).to eq '/usr/local/bin/eclipse'
    expect(file('/usr/local/eclipse/.eclipseproduct').content).to contain 'version=4.6.0'
  end
end
