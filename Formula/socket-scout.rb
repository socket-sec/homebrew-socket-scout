ruby
 class SocketScout < Formula
   desc "Installation of Socket Scout"
   homepage "https://github.com/socket-sec/socket-scout"
   url "https://github.com/socket-sec/socket-scout.git"
   version "1.0.0"
   sha256 "your_sha256_hash_here"
   license "MIT"

   def install
     bin.install "scripts/ssdev.py"
   end
 end
