class Pilot < Formula
  desc "Your AI crew, ready to fly. Medal Social's AI-powered CLI platform."
  homepage "https://github.com/Medal-Social/Pilot"
  license "Apache-2.0"
  version "0.5.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.5.2/pilot-darwin-arm64"
      sha256 "515eb0c0f20fe4ac684c865ab0ef2c068d1a589bb27f9c35606b0b693ba4aaee" # darwin-arm64

      def install
        bin.install "pilot-darwin-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.5.2/pilot-darwin-x64"
      sha256 "b7f0609ce88d99fb09a3db498157602d95606f57bffd3be82231529000c7b48d" # darwin-x64

      def install
        bin.install "pilot-darwin-x64" => "pilot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.5.2/pilot-linux-arm64"
      sha256 "554053118cc98e7019995840a2c1f0514c600773c0339178081e66300ac28ff0" # linux-arm64

      def install
        bin.install "pilot-linux-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.5.2/pilot-linux-x64"
      sha256 "ae6480d42f7099ce6b6a0e41d5e329e57f07d2a5a16ac601983ea78bec9e41d5" # linux-x64

      def install
        bin.install "pilot-linux-x64" => "pilot"
      end
    end
  end

  test do
    assert_match "pilot", shell_output("#{bin}/pilot --version")
  end
end
