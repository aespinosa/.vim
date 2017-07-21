#!/usr/bin/env ruby -ns

bundle = $_.match(/^" Bundle: (.*)$/)
next unless bundle
bundle = bundle[1]
url, basename = if bundle =~ /^[A-Za-z0-9-]+\/[A-Za-z0-9._-]+$/
    ["https://github.com/#{bundle}/archive/master.tar.gz", File.basename(bundle)]
  elsif bundle =~ /^[A-Za-z0-9._-]+$/ 
    ["https://github.com/vim-scripts/#{bundle}/archive/master.tar.gz", bundle]
  end

system "mkdir -p #{basename}"
system "curl -sL #{url} | tar -xvz --strip 1 -C #{basename}"
