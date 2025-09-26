class app < Formula
  desc "Installation of Socket Scout"
  homepage "https://github.com/socket-sec/homebrew-socket-scout"
  url "https://github.com/socket-sec/homebrew-socket-scout/archive/refs/tags/v2.1.3.tar.gz"
  version "2.1.3"
  sha256 "fe98b1bb28d759b9bd6c7e8107114b9b8e9afe03696dc1076348a833042d96e8"
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
