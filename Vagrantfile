Vagrant.configure(2) do |config|
    config.vm.box = "ubuntu/trusty64"

    config.vm.post_up_message = "Starting the Vagrant box for Vault Experiment"
    config.vm.provider "virtualbox" do |v|
      v.memory = 512
      v.cpus = 1
    end

    config.vm.provision "shell", path: "provision.sh"

    # Give the box an IP
    config.vm.network "private_network", ip: "192.168.200.100"

end
