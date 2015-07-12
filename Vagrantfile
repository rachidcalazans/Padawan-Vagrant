# -*- mode: ruby -*-
# vi: set ft=ruby :

require_relative 'main.rb'

Vagrant.configure(2) do |config|
  config.vm.define 'padawan-vagrant' do |machine|
    machine.vm.box = "ubuntu/trusty64"
    machine.vm.box_check_update = false
    machine.vm.network "private_network", ip: "10.0.10.50"
    machine.vm.network "forwarded_port", guest: 3000, host: 3000
    machine.vm.hostname = "padawan-vagrant"
    machine.vm.synced_folder '/Volumes/Second_HD/Developing/Workspaces/', '/home/vagrant/code', :nfs => true
    # machine.vm.synced_folder '/Volumes/Second_HD/Developing/Workspaces/', '/home/vagrant/code'

    machine.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = "2048"
      vb.cpus = 1
    end

    post_message = "Hi there!\n"
    main =  Main.new(machine, {ruby:    true,
                               postgre: true,
                               tomcat:  false,
                               java:    false,
                               jenkins: false,
                               meteor:  false}
                    )
    post_message += main.post_message

    machine.vm.post_up_message = "#{post_message} Access you machine using: vagrant ssh\n\\o/"

  end
end
