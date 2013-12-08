#
# Cookbook Name:: app_nodejs_helloworld
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

application "hello-world" do
  path "/var/www/nodejs/hello-world"
  owner "www-data"
  group "www-data"
  packages ["git"]

  repository "https://github.com/oliver----/example_nodejs_helloworld.git"

  nodejs do
    entry_point "app.js"
  end
end
