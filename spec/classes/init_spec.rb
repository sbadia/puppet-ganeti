require 'spec_helper'

describe 'ganeti', :type => :class  do

  describe 'On an unknown operating system' do
    let(:facts) {{ :osfamily => 'Unknown' }}
    it { expect { catalogue }.to raise_error(Puppet::Error, /Unsupported osfamily/) }
  end

  describe "On Debian" do
    let(:facts) {{ :osfamily => 'Debian' }}
    it { is_expected.to contain_class("ganeti::params") }
    it { is_expected.to contain_package('ganeti') }
  end

end
