class Pilot < Formula
  desc "Your AI crew, ready to fly. Medal Social's AI-powered CLI platform."
  homepage "https://github.com/Medal-Social/pilot"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/pilot/releases/latest/download/pilot-darwin-arm64"
      sha256 "b8f7662df1da62f7ac6dbb98d4ba598ccac94c2aaed566401dd7d02512ba7ec6" # darwin-arm64

      def install
        bin.install "pilot-darwin-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/pilot/releases/latest/download/pilot-darwin-x64"
      sha256 "51722445b68363a3994a1c210b273bb354ff9954af3a94f1108b4f75bab5710c" # darwin-x64

      def install
        bin.install "pilot-darwin-x64" => "pilot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/pilot/releases/latest/download/pilot-linux-arm64"
      sha256 "d07d66f5475d2f0a62d44a93aabcb3fd0b5d0674e935bb81c96d33430217be75" # linux-arm64

      def install
        bin.install "pilot-linux-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/pilot/releases/latest/download/pilot-linux-x64"
      sha256 "b64266b698404ccceb88c2f101813e7befd24084ddb5602ef628715952b846bf" # linux-x64

      def install
        bin.install "pilot-linux-x64" => "pilot"
      end
    end
  end

  test do
    assert_match "pilot", shell_output("#{bin}/pilot --version")
  end
end
