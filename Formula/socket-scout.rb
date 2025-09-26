class SocketScout < Formula
  desc "Installation of Socket Scout"
  homepage "https://github.com/homebrew-socket-sec/socket-scout"
  url "https://github.com/socket-sec/socket-scout/archive/refs/tags/v2.0.4.tar.gz"
  version "2.0.5"
  sha256 "90c4fe6df8862f53659933a4d36bf09da58f87cd17a17a70e9c1f377f2cc52ab"
  license "MIT"

  def install
    bin.install "scripts/ssdev.py" => "socket-scout"
    libexec.install "scripts/Socket.Scout.dylib"
  end

  def post_install
    system "#{bin}/socket-scout"
  end
end
