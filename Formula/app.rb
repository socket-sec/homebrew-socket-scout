class app < Formula
  desc "Installation of Socket Scout"
  homepage "https://github.com/socket-sec/homebrew-socket-scout"
  url "https://github.com/socket-sec/homebrew-socket-scout/archive/refs/tags/v2.1.4.tar.gz"
  version "2.1.4"
  sha256 "dcc324802cd75997b8ff7e448015d0992752ec0e4cfe8ce89ec2536490035c6b"
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
