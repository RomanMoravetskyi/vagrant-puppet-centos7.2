require 'spec_helper'

shared_context :epel_testing do
  it do
    should contain_yumrepo('epel-testing').with({
      'failovermethod' => 'priority',
      'proxy'          => 'absent',
      'enabled'        => '0',
      'gpgcheck'       => '1',
    })
  end
end

shared_examples_for :epel_testing_7 do
  include_context :epel_testing

  it do
    should contain_yumrepo('epel-testing').with({
      'baseurl'        => "https://download.fedoraproject.org/pub/epel/testing/7/$basearch",
      'gpgkey'         => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7",
      'descr'          => "Extra Packages for Enterprise Linux 7 - Testing - $basearch ",
    })
  end
end

shared_examples_for :epel_testing_6 do
  include_context :epel_testing

  it do
    should contain_yumrepo('epel-testing').with({
      'baseurl'        => "https://download.fedoraproject.org/pub/epel/testing/6/$basearch",
      'gpgkey'         => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6",
      'descr'          => "Extra Packages for Enterprise Linux 6 - Testing - $basearch ",
    })
  end
end

shared_examples_for :epel_testing_5 do
  include_context :epel_testing

  it do
    should contain_yumrepo('epel-testing').with({
      'baseurl'        => "https://download.fedoraproject.org/pub/epel/testing/5/$basearch",
      'gpgkey'         => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-5",
      'descr'          => "Extra Packages for Enterprise Linux 5 - Testing - $basearch ",
    })
  end
end
