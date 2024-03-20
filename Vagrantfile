Vagrant.configure("2") do |config|
  
    config.vm.box = "kalilinux/rolling"
    
    config.vm.network "private_network", type: "dhcp"
    
    config.vm.synced_folder "ctf_pentest", "/home/kraaakilo/Labs/ctf_pentest", owner: "kraaakilo", group: "kraaakilo", mount_options: ["dmode=775", "fmode=664"]

    config.vm.synced_folder "config/xfce4", "/home/kraaakilo/.config/xfce4", owner: "kraaakilo", group: "kraaakilo", mount_options: ["dmode=775", "fmode=664"]
    config.vm.synced_folder "config/qterminal.org", "/home/kraaakilo/.config/qterminal.org", owner: "kraaakilo", group: "kraaakilo", mount_options: ["dmode=775", "fmode=664"]

    config.vm.provider "virtualbox" do |vb|
      vb.gui = true
      vb.memory = "4096"
      vb.name = "TripleA-Security"
    end
    
    config.vm.provision "shell" do |shell|
      shell.inline = <<-SHELL
        sudo useradd -m -s /usr/bin/zsh kraaakilo
        echo "kode" | sudo passwd --stdin kraaakilo
        echo "kraaakilo ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/kraaakilo
        cp /vagrant/config/.zshrc /home/kraaakilo/.zshrc
        cp -r /vagrant/config/qterminal.org /home/kraaakilo/.config/qterminal.org
        cp -r /vagrant/fonts /home/kraaakilo/.fonts
        chown -R kraaakilo:kraaakilo /home/kraaakilo
        sudo sed -i 's/^XKBLAYOUT.*/XKBLAYOUT="fr"/' /etc/default/keyboard
      SHELL
    end
end
  