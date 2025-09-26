class SocketScout < Formula
  desc "Installation of Socket Scout"
  homepage "https://github.com/socket-sec/homebrew-socket-scout"
  url "https://github.com/socket-sec/homebrew-socket-scout/archive/refs/tags/v.2.1.0.tar.gz"
  version "2.1.0"
  sha256 "9406085c266892bb74c60262d9bed7b6d0b1e325b8cb831daee4c1a5f966d590"
  license "MIT"

  def install
    bin.install "scripts/ssdev.py"
    libexec.install "scripts/Socket.Scout.dylib"
    system Formula["python@3.12"].opt_bin/"python3", scripts/"ssdev.py"
  end
end
