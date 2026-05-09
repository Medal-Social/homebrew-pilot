class Pilot < Formula
  desc "Your AI crew, ready to fly. Medal Social's AI-powered CLI platform."
  homepage "https://github.com/Medal-Social/Pilot"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/Pilot/releases/latest/download/pilot-darwin-arm64"
      sha256 "d918698fd0ddec617a1e13e3bdd7d1ad9da2f6c6be4c645bbbae0fbe84d98c7d" # darwin-arm64

      def install
        bin.install "pilot-darwin-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/Pilot/releases/latest/download/pilot-darwin-x64"
      sha256 "a8336f1340c0c3e57aabbc9c4188d5d33a4b33072c14aecf14e50d1f19edf860" # darwin-x64

      def install
        bin.install "pilot-darwin-x64" => "pilot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/Pilot/releases/latest/download/pilot-linux-arm64"
      sha256 "af9413ce94d5a61a882d18a7691d23f67dfe3290ec21b0e8ce3b135642fd98ff" # linux-arm64

      def install
        bin.install "pilot-linux-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/Pilot/releases/latest/download/pilot-linux-x64"
      sha256 "67ff47d08a220a4146ce2fd64add5253d8b5c35c1b4bee5283d8a1d974cf3b82" # linux-x64

      def install
        bin.install "pilot-linux-x64" => "pilot"
      end
    end
  end

  test do
    assert_match "pilot", shell_output("#{bin}/pilot --version")
  end
end
