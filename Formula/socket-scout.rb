class SocketScout < Formula
  desc "Installation of Socket Scout"
  homepage "https://github.com/homebrew-socket-sec/socket-scout"
  url "https://github.com/socket-sec/socket-scout/archive/refs/tags/v2.0.5.tar.gz"
  version "2.0.5"
  sha256 "6a1a9c02c283de618462f9e5a7d92ce633193394292d4c38b9c5ca7916fc3b5c"
  license "MIT"

  def install
    bin.install "scripts/ssdev.py" => "socket-scout"
    libexec.install "scripts/Socket.Scout.dylib"
  end

  def post_install
    system "#{bin}/socket-scout"
  end
end
