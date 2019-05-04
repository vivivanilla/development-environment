package 'openjdk-11-jdk'

apt_repository 'sbt' do
  uri 'https://dl.bintray.com/sbt/debian'
  keyserver 'hkp://keyserver.ubuntu.com:80'
  key '2EE0EA64E40A89B84B2DF73499E82A75642AC823'
  distribution '/'
end

apt_update

package 'sbt'
