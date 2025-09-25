class SocketScout < Formula
  desc "Installation of Socket Scout"
  homepage "https://github.com/homebrew-socket-sec/socket-scout"
  url "https://github.com/socket-sec/socket-scout/archive/refs/tags/v1.1.9.tar.gz"
  version "1.1.9"
  sha256 "bcefcd46f9fa2702c67714984ec72b190ea37bcf12ddbcbf04a8d8691e43b9a8"
  license "MIT"

  def install
    bin.install "scripts/ssdev.py"
  end
end
