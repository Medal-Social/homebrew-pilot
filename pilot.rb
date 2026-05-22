class Pilot < Formula
  desc "Your AI crew, ready to fly. Medal Social's AI-powered CLI platform."
  homepage "https://github.com/Medal-Social/Pilot"
  license "Apache-2.0"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.7.0/pilot-darwin-arm64"
      sha256 "315b42c315ec77b5db627a8a5b06619f2813175f87ddda8236c089d7e239bc23" # darwin-arm64

      def install
        bin.install "pilot-darwin-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.7.0/pilot-darwin-x64"
      sha256 "317e51952caead10de106243f78c7be091c398c68455e263628e9e1a95e10ca8" # darwin-x64

      def install
        bin.install "pilot-darwin-x64" => "pilot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.7.0/pilot-linux-arm64"
      sha256 "8ad2012fd87134a5ece055fe2e309a75200f5fcb31d2162505731a59326f7637" # linux-arm64

      def install
        bin.install "pilot-linux-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.7.0/pilot-linux-x64"
      sha256 "d5a15dc9abf58f3c0ffb0bb96bd70faa21a081cdf1a837a14f3fb8e9fa266268" # linux-x64

      def install
        bin.install "pilot-linux-x64" => "pilot"
      end
    end
  end

  test do
    assert_match "pilot", shell_output("#{bin}/pilot --version")
  end
end
