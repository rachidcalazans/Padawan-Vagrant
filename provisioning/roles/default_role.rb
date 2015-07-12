class DefaultRole
  def self.run machine
    machine.vm.provision "default", type: "shell", path: "provisioning/scripts/default.sh"
  end

  def self.post_message
    ""
  end
end
