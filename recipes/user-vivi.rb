group 'vivi' do
  gid 1000
end

user 'vivi' do
  comment 'Vivienne Franziska Kreitmair,,,'
  uid 1000
  gid 1000
  home '/home/vivi'
  shell 'bin/bash'
end

directory '/home/vivi' do
  owner 'vivi'
  group 'vivi'
end

directory '/home/vivi/.kde/share/config' do
  owner 'vivi'
  group 'vivi'
  recursive true
end

cookbook_file '/home/vivi/.kde/share/config/kdeglobals' do
  source 'kdeglobals'
  owner 'vivi'
  group 'vivi'
end

directory '/home/vivi/.kde/share/apps/color-schemes' do
  owner 'vivi'
  group 'vivi'
  recursive true
end

cookbook_file '/home/vivi/.kde/share/apps/color-schemes/Breeze.colors' do
  source 'Breeze.colors'
  owner 'vivi'
  group 'vivi'
end
