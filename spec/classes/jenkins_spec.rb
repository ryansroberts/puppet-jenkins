require 'spec_helper'
describe 'jenkins' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
      :boxen_user => 'testuser',
    }
  end

  it do
    should include_class('jenkins::config')

    should include_class('homebrew')

    should include_class('nginx')

    should contain_package('boxen/brews/jenkins')

    should contain_service('dev.jenkins').with(:ensure => 'running')
  end
end
