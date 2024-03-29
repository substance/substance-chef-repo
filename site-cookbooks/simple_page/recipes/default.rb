#
# Cookbook Name:: simple_page
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "apache2" do
  action :install
end

service "apache2" do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end

cookbook_file "/var/www/index.html" do
  source "index.html"
  mode "0644"
end
