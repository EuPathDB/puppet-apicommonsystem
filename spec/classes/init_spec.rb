require 'spec_helper'
describe 'apicommonsystem' do

  context 'with defaults for all parameters' do
    it { should contain_class('apicommonsystem') }
  end
end
