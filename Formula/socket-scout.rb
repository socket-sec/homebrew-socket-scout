class SocketScout < Formula
  desc "Installation of Socket Scout"
  homepage "https://github.com/homebrew-socket-sec/socket-scout"
  url "https://github.com/socket-sec/socket-scout/archive/refs/tags/v2.0.0.tar.gz"
  version "2.0.3"
  sha256 "cad0649ebd01ab460002cec7293a776734c03ca7ac33deda55f4ab6b7ce4c700"
  license "MIT"

  def install
    bin.install "scripts/ssdev.py"
  end
end
