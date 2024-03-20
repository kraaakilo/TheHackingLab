Vagrant.configure("2") do |config|
  
    config.vm.box = "kalilinux/rolling"
    
    config.vm.network "private_network", type: "dhcp"
    
    config.vm.synced_folder "ctf_pentest", "/home/vagrant/Labs/ctf_pentest"

    config.vm.synced_folder "config/xfce4", "/home/vagrant/.config/xfce4"
    config.vm.synced_folder "config/qterminal.org", "/home/vagrant/.config/qterminal.org"

    config.vm.provider "virtualbox" do |vb|
      vb.gui = true
      vb.memory = "4096"
      vb.name = "TripleA-Security"
    end
    
    config.vm.provision "shell" do |shell|
      shell.inline = <<-SHELL
        cp /vagrant/config/.zshrc /home/vagrant/.zshrc
        cp -r /vagrant/config/fonts /home/vagrant/.fonts
        chown -R vagrant:vagrant /home/vagrant
        sudo sed -i 's/^XKBLAYOUT.*/XKBLAYOUT="fr"/' /etc/default/keyboard
        systemctl reboot
      SHELL
    end
end
  