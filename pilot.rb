class Pilot < Formula
  desc "Your AI crew, ready to fly. Medal Social's AI-powered CLI platform."
  homepage "https://github.com/Medal-Social/Pilot"
  license "Apache-2.0"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.7.1/pilot-darwin-arm64"
      sha256 "38a870f56e39a2aa15f1c0f6cdf832408faaeb4a94d75f1d4460b232b8f7c78f" # darwin-arm64

      def install
        bin.install "pilot-darwin-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.7.1/pilot-darwin-x64"
      sha256 "8d60b6e2324b81a6d8376fe91ff338d8161bb23578ab4bd962e32785b82ec7e9" # darwin-x64

      def install
        bin.install "pilot-darwin-x64" => "pilot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.7.1/pilot-linux-arm64"
      sha256 "6d998229dbd9c5fa9050c588e36d9a989816a7ef18369ae91f950e07db646c58" # linux-arm64

      def install
        bin.install "pilot-linux-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.7.1/pilot-linux-x64"
      sha256 "bf9b2e0e02fb824d58740393c189639b4940ba82cd7d8d8d733731b77ac94e2f" # linux-x64

      def install
        bin.install "pilot-linux-x64" => "pilot"
      end
    end
  end

  test do
    assert_match "pilot", shell_output("#{bin}/pilot --version")
  end
end
