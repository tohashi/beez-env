#
# Cookbook Name:: beez-deps
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

bash "install npm packages" do
  cwd "/home"
  user "root"
  code <<-EOH
    npm install -g grunt-cli beez beez-foundation
    EOH
end

