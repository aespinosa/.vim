#!/usr/bin/env ruby -ns

bundle = $F[2]
url, basename = if bundle =~ /^[A-Za-z0-9-]+\/[A-Za-z0-9._-]+$/
    ["https://github.com/#{bundle}/archive/master.tar.gz", File.basename(bundle)]
  elsif bundle =~ /^[A-Za-z0-9._-]+$/ 
    ["https://github.com/vim-scripts/#{bundle}/archive/master.tar.gz", bundle]
  end

system "mkdir -p #{basename}"
system "curl -L #{url} | gtar -xzv --strip 1 -C #{basename}"
