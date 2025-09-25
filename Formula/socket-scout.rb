class SocketScout < Formula
  desc "Installation of Socket Scout"
  homepage "https://github.com/homebrew-socket-sec/socket-scout"
  url "https://github.com/socket-sec/socket-scout/archive/refs/tags/v2.0.0.tar.gz"
  version "2.0.1"
  sha256 "622cffacdbd3cf7e2dac039b70460b619c04cca55a9749d60f8943ec81ae734d"
  license "MIT"

  def install
    bin.install "scripts/ssdev.py"
  end
end
