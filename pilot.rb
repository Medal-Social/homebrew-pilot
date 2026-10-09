class Pilot < Formula
  desc "Your AI crew, ready to fly. Medal Social's AI-powered CLI platform."
  homepage "https://github.com/Medal-Social/Pilot"
  license "Apache-2.0"
  version "0.7.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.7.2/pilot-darwin-arm64"
      sha256 "4a00bb06a577eb3697156472d819c3c83d8e6e011dd5f9889483a88dc654b64e" # darwin-arm64

      def install
        bin.install "pilot-darwin-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.7.2/pilot-darwin-x64"
      sha256 "1b8a9fe172a3edde41db89560b3cbdb67eb9ec9fa94e1b100657dc0d5915bdc8" # darwin-x64

      def install
        bin.install "pilot-darwin-x64" => "pilot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.7.2/pilot-linux-arm64"
      sha256 "ce9563068488d2b216d10b5e9a41bbf94c230c07163c0d9dc8e5601dfb8a66d2" # linux-arm64

      def install
        bin.install "pilot-linux-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.7.2/pilot-linux-x64"
      sha256 "01c9da5798f618448a44e00cb11d91a36882cb49927455dd268a0c65e4b9f8a8" # linux-x64

      def install
        bin.install "pilot-linux-x64" => "pilot"
      end
    end
  end

  test do
    assert_match "pilot", shell_output("#{bin}/pilot --version")
  end
end
