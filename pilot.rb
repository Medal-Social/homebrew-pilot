class Pilot < Formula
  desc "Your AI crew, ready to fly. Medal Social's AI-powered CLI platform."
  homepage "https://github.com/Medal-Social/Pilot"
  license "Apache-2.0"
  version "0.7.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.7.5/pilot-darwin-arm64"
      sha256 "4fd3c86977e0d0a4d330fa34158011bc091f4afd8217bbdf67bc9882e5dceab2" # darwin-arm64

      def install
        bin.install "pilot-darwin-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.7.5/pilot-darwin-x64"
      sha256 "aea17e73977e0e78af46aae3fc140ede523fc2256f08618dc343b24868c2e1eb" # darwin-x64

      def install
        bin.install "pilot-darwin-x64" => "pilot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.7.5/pilot-linux-arm64"
      sha256 "a122bce47a96cf4e79841160046d0dbca361a53fb3279d9241c62f695f50b569" # linux-arm64

      def install
        bin.install "pilot-linux-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.7.5/pilot-linux-x64"
      sha256 "5c270490c29966221fd11a30054de9da1102130d0323452bec8d689c42607757" # linux-x64

      def install
        bin.install "pilot-linux-x64" => "pilot"
      end
    end
  end

  test do
    assert_match "pilot", shell_output("#{bin}/pilot --version")
  end
end
