class Pilot < Formula
  desc "Your AI crew, ready to fly. Medal Social's AI-powered CLI platform."
  homepage "https://github.com/Medal-Social/Pilot"
  license "Apache-2.0"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.5.0/pilot-darwin-arm64"
      sha256 "a5fb8240bcb8e431dd4e348ddc08c697e79d390933efd3140817e2c0314bccab" # darwin-arm64

      def install
        bin.install "pilot-darwin-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.5.0/pilot-darwin-x64"
      sha256 "5a45e36e392ae78983a068be1ef4932cc9568a9d429efd6b758e4a61fc160400" # darwin-x64

      def install
        bin.install "pilot-darwin-x64" => "pilot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.5.0/pilot-linux-arm64"
      sha256 "4bc0624a7b484d905b8559c3030788ad646a102117b0bd04628e0b2dead6fc71" # linux-arm64

      def install
        bin.install "pilot-linux-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.5.0/pilot-linux-x64"
      sha256 "d127ba2bd50cd394e5c7d6137cff1c7ba7db9597abfb32db2546e10f9d698c1a" # linux-x64

      def install
        bin.install "pilot-linux-x64" => "pilot"
      end
    end
  end

  test do
    assert_match "pilot", shell_output("#{bin}/pilot --version")
  end
end
