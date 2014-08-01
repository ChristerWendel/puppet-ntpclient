require 'spec_helper'

describe 'ntpclient', :type => :class do
  let(:title) { 'ntpclient::configure' }

  context 'with default parameters' do
    it { should contain_file('/etc/ntp.conf')
      .with_content(/server 1.ubuntu.pool.ntp.org/)
      .with_content(/server 2.ubuntu.pool.ntp.org/)
      .with_content(/server 3.ubuntu.pool.ntp.org/)
    }
  end

  context 'servers => debian' do
    let(:params) { {:servers => [
                                 '1.debian.pool.ntp.org',
                                 '2.debian.pool.ntp.org'
                                ]
      } }

    it { should contain_file('/etc/ntp.conf')
      .with_content(/server 1.debian.pool.ntp.org/)
      .with_content(/server 2.debian.pool.ntp.org/)
    }
  end
end
