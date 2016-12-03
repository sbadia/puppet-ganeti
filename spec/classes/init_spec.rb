require 'spec_helper'
describe 'ganeti' do
  context 'with default values for all parameters' do
    it { should contain_class('ganeti') }
  end
end
