class SocketScout < Formula
  desc "Installation of Socket Scout"
  homepage "https://github.com/homebrew-socket-sec/socket-scout"
  url "https://github.com/socket-sec/socket-scout/archive/refs/tags/v2.0.0.tar.gz"
  version "2.0.0"
  sha256 "be71ae77f99925b70933a374d495458133db7d40024ad7de9557059a53d701b5"
  license "MIT"

  def install
    bin.install "scripts/ssdev.py"
  end
end
