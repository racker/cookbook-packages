# encoding: UTF-8

Chef::Log.info "packages:#{node['packages']}"
node['packages'].each do |pkg|
  package pkg do
    action :upgrade
  end
end
