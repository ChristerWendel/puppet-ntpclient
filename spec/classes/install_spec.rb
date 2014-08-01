require 'spec_helper'

describe 'ntpclient', :type => :class do
  let(:title) { 'ntpclient::install' }

  context 'with default parameters' do
    it { should contain_package('ntp')
        .with_ensure('present')
    }
  end

  context 'version => present' do
    let(:params) { {:version => 'present'} }

    it { should contain_package('ntp')
        .with_ensure('present')
    }
  end

  context 'version => latest' do
    let(:params) { {:version => 'latest'} }

    it { should contain_package('ntp')
        .with_ensure('latest')
    }
  end
end
