class Pilot < Formula
  desc "Your AI crew, ready to fly. Medal Social's AI-powered CLI platform."
  homepage "https://github.com/Medal-Social/pilot"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/pilot/releases/latest/download/pilot-darwin-arm64"
      sha256 "21957ccbe7797ae8d42df3add7d5f38dfdbfb0ad933569a969557b0a777edad4" # darwin-arm64

      def install
        bin.install "pilot-darwin-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/pilot/releases/latest/download/pilot-darwin-x64"
      sha256 "1fdaa5f05b7376996ac24a2a06d9018583a6c5ca928c938e25e6f1b1820d4992" # darwin-x64

      def install
        bin.install "pilot-darwin-x64" => "pilot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/pilot/releases/latest/download/pilot-linux-arm64"
      sha256 "81c676b5b795317c7e43d22b6edb04d439c7d9f72b5c41bd712ca51da45e591f" # linux-arm64

      def install
        bin.install "pilot-linux-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/pilot/releases/latest/download/pilot-linux-x64"
      sha256 "357a13893060fbf3c1d6c6aaf0eabf591eec712351760e23ce07e5fc4dbcc2b5" # linux-x64

      def install
        bin.install "pilot-linux-x64" => "pilot"
      end
    end
  end

  test do
    assert_match "pilot", shell_output("#{bin}/pilot --version")
  end
end
