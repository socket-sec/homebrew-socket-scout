class SocketScout < Formula
  desc "Installation of Socket Scout"
  homepage "https://github.com/homebrew-socket-sec/socket-scout"
  url "https://github.com/socket-sec/socket-scout/archive/refs/tags/v2.0.3.tar.gz"
  version "2.0.3"
  sha256 "889fdfbd631a0101d53fa1b5618cc5ce9c27db9a2fe613c26eb1429c9808b730"
  license "MIT"

  def install
    bin.install "scripts/ssdev.py"
  end
end
