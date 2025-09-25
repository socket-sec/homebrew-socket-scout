class SocketScout < Formula
  desc "Installation of Socket Scout"
  homepage "https://github.com/homebrew-socket-sec/socket-scout"
  url "https://github.com/socket-sec/socket-scout/archive/refs/tags/v2.0.0.tar.gz"
  version "2.0.1"
  sha256 "654e64281fd6042e807090d3685c0f2feb594ca2c5052c7efb421174c59918f2"
  license "MIT"

  def install
    bin.install "scripts/ssdev.py"
  end
end
