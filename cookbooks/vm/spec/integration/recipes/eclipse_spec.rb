require 'spec_helper'

describe 'vm::eclipse' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html

  it 'installs Eclipse JEE Neon R3 (4.6.3)' do
    expect(command('which eclipse').stdout.strip).to eq '/usr/local/bin/eclipse'
    expect(file('/usr/local/eclipse/eclipse.ini').content).to contain 'org.eclipse.epp.package.jee.product'
    expect(file('/usr/local/eclipse/.eclipseproduct').content).to contain 'version=4.6.3'
  end
end
