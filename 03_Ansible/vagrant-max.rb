Vagrant.configure("2") do |config|
  servers = [
    {
      :hostname => "dbserver",
      :box => "bento/ubuntu-18.04",
      :ip => "192.168.56.104",
      :ssh_port => '2213'
    },
    {
      :hostname => "webserver",
      :box => "bento/ubuntu-18.04",
      :ip => "192.168.56.102",
      :ssh_port => '2211'
    },
    {
      :hostname => "dockerhost",
      :box => "bento/ubuntu-18.04",
      :ip => "192.168.56.103",
      :ssh_port => '2212'
    },
    {
      :hostname => "ansible-control",
      :box => "bento/ubuntu-18.04",
      :ip => "192.168.56.100",
      :ssh_port => '2215'
    }
  ]

  servers.each do |machine|
    config.vm.define machine[:hostname] do |node|
      node.vm.box = machine[:box]
      node.vm.hostname = machine[:hostname]
    
      node.vm.network :private_network, ip: machine[:ip]
      node.vm.network "forwarded_port", guest: 22, host: machine[:ssh_port], id: "ssh"

      node.vm.provider :virtualbox do |v|
        v.customize ["modifyvm", :id, "--memory", 512]
        v.customize ["modifyvm", :id, "--name", machine[:hostname]]
      end

      if machine[:hostname] == 'ansible-control'
        node.vm.provision "shell", inline: "sudo apt-get update -y && sudo apt-get install ansible -y"
        node.vm.provision "shell", inline: "sudo echo 'vagrant ALL=(ALL:ALL) ALL' >> /etc/sudoers"
      end
    end
  end
end