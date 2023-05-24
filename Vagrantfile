Vagrant.configure('2') do |config|
  config.vm.define :centos do |centos_vm|
    centos_vm.vm.box = 'centos/8'
    centos_vm.vm.network "private_network", ip: "192.168.59.22"
    centos_vm.vm.hostname = "centos8"
    centos_vm.vm.hostname = 'centos8'
#    centos_vm.vm.synced_folder 'vagrant_podman', '/vagrant_podman'
#    centos_vm.vm.synced_folder "ansible_podman", "/vagrant_podman", :mount_options => ["ro"]
    centos_vm.vm.provision "shell", inline: "echo 'nameserver 8.8.8.8' | sudo tee /etc/resolv.conf > /dev/null"
    centos_vm.vm.provision 'shell', path: './scripts/centos_machine.sh'

    centos_vm.vm.provider :libvirt do |lv, override|
      #lv.memory = 2*1024
      #lv.cpus = 2
      #lv.cpu_mode = 'host-passthrough'

      lv.customize ["modifyvm", :id, "--memory", "2048"]
      lv.customize ["modifyvm", :id, "--cpus", "2"]
      lv.customize ["storagectl", :id, "--name", "IDE Controller", "--add", "ide"]
      lv.customize ["storageattach", :id, "--storagectl", "IDE Controller", "--port", "1", "--device", "0", "--type", "dvddrive", "--medium", "guestadditions.iso"]
    end

  end
end
