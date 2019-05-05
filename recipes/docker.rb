package 'docker' do
  package_name ['docker', 'docker-engine', 'docker.io', 'containerd', 'docker-engine']
  action :remove
end

package 'apt-transport-https'

package 'ca-certificates'

package 'curl'

package 'gnupg2'

package 'software-properties-common'

apt_repository 'docker' do
  uri 'https://download.docker.com/linux/ubuntu'
  key 'https://download.docker.com/linux/ubuntu/gpg'
  components ['stable']
  arch 'amd64'
  distribution 'cosmic'
end

apt_update

package 'docker-ce'

package 'docker-ce-cli'

package 'containerd.io'
