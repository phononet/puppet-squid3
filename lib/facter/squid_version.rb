Facter.add('squid_version') do
  setcode do
    Facter::Util::Resolution.exec('/usr/sbin/squid -v | awk \'/Version/ { print $NF}\'');
  end
end
