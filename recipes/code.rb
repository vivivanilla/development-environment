#snap_package 'Visual Studio Code' do
#  package_name 'code'
#  action :upgrade
#end

#bash 'snap' do
#  code 'snap install code --classic'
#end

package 'apt-transport-https'

apt_repository 'vscode' do
  uri 'https://packages.microsoft.com/repos/vscode'
  key 'https://packages.microsoft.com/keys/microsoft.asc'
  components ['stable', 'main']
  arch 'amd64'
  distribution nil
end

apt_update

package 'code'
