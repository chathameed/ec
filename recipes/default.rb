#
# Cookbook Name:: orchestrator_ec2_wrapper
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

cookbook_file '/etc/profile.d/proxy.sh' do
  source 'proxy_profile.d'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

yum_globalconfig '/etc/yum.conf' do
  keepcache true
  proxy 'http://webproxy.wlb2.nam.nsroot.net:8080'
end

include_recipe 'yum'

bash 'enable_yum_extras' do
  code <<-EOH
    yum-config-manager --enable rhui-REGION-rhel-server-extras
    yum-config-manager --enable rhui-REGION-rhel-server-optional
    yum clean all
  EOH
end

include_recipe 'cti_orchestrator'
