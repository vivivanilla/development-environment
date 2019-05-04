include_recipe 'development-environment::user-vivi'

directory '/home/vivi/.ssh' do
end

unless ::File.exist?('/home/vivi/.ssh/id_rsa') then
  bash 'ssh-keygen' do
    code 'sudo -u vivi ssh-keygen -t rsa -f ~/.ssh/id_rsa -N \'\''
  end
end
