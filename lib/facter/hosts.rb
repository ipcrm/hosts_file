Facter.add(:hosts) do
  setcode do
    hosts_hash = {}
    File.readlines('/etc/hosts').each do |line|
      if line !~ /^$/
        host_id = "#{line.chomp.split()[1]}-#{line.chomp.split()[0]}"
        hosts_hash[ host_id ] = line.chomp()
      end
    end
    hosts_hash
  end
end
