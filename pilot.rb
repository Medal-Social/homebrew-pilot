class Pilot < Formula
  desc "Your AI crew, ready to fly. Medal Social's AI-powered CLI platform."
  homepage "https://github.com/Medal-Social/pilot"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/pilot/releases/latest/download/pilot-darwin-arm64"
      sha256 "88ec14cefffb117de67fd689fbc67292fb55e2d2162ff28a566afc8f3152b663" # darwin-arm64

      def install
        bin.install "pilot-darwin-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/pilot/releases/latest/download/pilot-darwin-x64"
      sha256 "b9342a2b3c163f88fa2dfe0eb86e02cd21c4b0dc61fc8491f2783511fe2d8255" # darwin-x64

      def install
        bin.install "pilot-darwin-x64" => "pilot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/pilot/releases/latest/download/pilot-linux-arm64"
      sha256 "cb72556ec9f1253e022cbff9bb54e6bbd1b19b5c2f1a0addeb9b9d912714328e" # linux-arm64

      def install
        bin.install "pilot-linux-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/pilot/releases/latest/download/pilot-linux-x64"
      sha256 "7c53d34c89fdc9c668fa5706c3bbbac92028940d5ca479cc3873ef7594d307f0" # linux-x64

      def install
        bin.install "pilot-linux-x64" => "pilot"
      end
    end
  end

  test do
    assert_match "pilot", shell_output("#{bin}/pilot --version")
  end
end
