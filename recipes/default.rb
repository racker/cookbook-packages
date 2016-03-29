# encoding: UTF-8

Chef::Log.info "install packages:#{node['install_packages']}"
node['install_packages'].each do |pkg|
  package pkg do
    action :install
  end
end
Chef::Log.info "upgrade packages:#{node['update_packages']}"
node['upgrade_packages'].each do |pkg|
  package pkg do
    action :upgrade
  end
end
