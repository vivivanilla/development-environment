apt_repository 'mmk2410-intellij-idea' do
  uri 'ppa:mmk2410/intellij-idea'
end

apt_update

package 'intellij-idea-community'
