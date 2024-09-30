Vagrant.configure("2") do |config|
  config.vm.box = "kalilinux/rolling"
  config.vm.network "private_network", ip:"192.168.56.100"
  config.vm.network "public_network", ip:"192.168.1.50", bridge: ["enp3s0","wlan0"]
  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "8192"
    vb.name = "TripleA-Security"
    vb.cpus = 4
  end
  config.vm.provision "shell" do |shell|
    shell.inline = <<-SHELL
        chown -R vagrant:vagrant /home/vagrant
        sudo sed -i 's/^XKBLAYOUT.*/XKBLAYOUT="fr"/' /etc/default/keyboard
        systemctl reboot
    SHELL
  end
end
