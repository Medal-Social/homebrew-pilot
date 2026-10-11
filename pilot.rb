class Pilot < Formula
  desc "Your AI crew, ready to fly. Medal Social's AI-powered CLI platform."
  homepage "https://github.com/Medal-Social/Pilot"
  license "Apache-2.0"
  version "0.7.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.7.4/pilot-darwin-arm64"
      sha256 "484ea8c5c74dd1ede6e1334b1023ee9af8817d6d19f19f95be158b538a09998a" # darwin-arm64

      def install
        bin.install "pilot-darwin-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.7.4/pilot-darwin-x64"
      sha256 "2b5f462623979bf27a5679c0769cf6ce3d58c15a4c1ddb6fd9bba295eafbe5a8" # darwin-x64

      def install
        bin.install "pilot-darwin-x64" => "pilot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.7.4/pilot-linux-arm64"
      sha256 "ecc62e61b3e91c33350d2ac257c1181230e8952968eded759a62ebcb5aa37e9c" # linux-arm64

      def install
        bin.install "pilot-linux-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.7.4/pilot-linux-x64"
      sha256 "f96345111c307f6e52f2c928bd6734a6df59398de9c19d906b3901a672a580ad" # linux-x64

      def install
        bin.install "pilot-linux-x64" => "pilot"
      end
    end
  end

  test do
    assert_match "pilot", shell_output("#{bin}/pilot --version")
  end
end
