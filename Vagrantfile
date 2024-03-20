Vagrant.configure("2") do |config|
  
    config.vm.box = "kalilinux/rolling"
    
    config.vm.network "private_network", type: "dhcp"
    
    config.vm.synced_folder "ctf_pentest", "/home/kraaakilo/Labs/ctf_pentest"
    config.vm.synced_folder "misc", "/home/kraaakilo/Labs/misc"

    config.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = "4096"
    end
    
    config.vm.provision "shell" do |shell|
      shell.inline = <<-SHELL
        sudo useradd -m -s /bin/bash kraaakilo
        echo "kode" | sudo passwd --stdin kraaakilo
        echo "kraaakilo ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/kraaakilo
        
        cp /vagrant/config/.bashrc /home/kraaakilo/.bashrc
        cp /vagrant/config/.bash_aliases /home/kraaakilo/.bash_aliases
        cp /vagrant/config/.bash_profile /home/kraaakilo/.bash_profile
      SHELL
    end
end
  