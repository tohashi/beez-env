#
# Cookbook Name:: beez-deps
# Recipe:: default
#
# Copyright 2014, t93
#
# All rights reserved - Do Not Redistribute

bash "install yum packages" do
  cwd "/home"
  user "root"
  code <<-EOH
    yum install -y wget optipng jpegoptim pngquant libjpeg-devel libpng-devel
    EOH
end

bash "install ImageMagick" do
  cwd "/home"
  user "root"
  code <<-EOH
    wget ftp://ftp.kddlabs.co.jp/graphics/ImageMagick/ImageMagick-6.8.9-1.tar.gz
    tar zxvf ImageMagick-6.8.9-1.tar.gz
    cd ImageMagick-6.8.9-1
    ./configure
    make
    make install
    EOH
end

bash "install npm packages" do
  cwd "/home"
  user "root"
  code <<-EOH
    npm install -g grunt-cli beez beez-foundation
    EOH
end

