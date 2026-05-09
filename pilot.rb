class Pilot < Formula
  desc "Your AI crew, ready to fly. Medal Social's AI-powered CLI platform."
  homepage "https://github.com/Medal-Social/pilot"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/pilot/releases/latest/download/pilot-darwin-arm64"
      sha256 "ae0aed4180c894d6235b5b76f60594e540e77a3a8a22b3ce9ffbdd7d4d4e5f5a" # darwin-arm64

      def install
        bin.install "pilot-darwin-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/pilot/releases/latest/download/pilot-darwin-x64"
      sha256 "65f9b960ee3c893219c1533a725d30de9be2f3b38c27f852bcc8500b484c5644" # darwin-x64

      def install
        bin.install "pilot-darwin-x64" => "pilot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/pilot/releases/latest/download/pilot-linux-arm64"
      sha256 "b24ee877b55ca7a3493063833f99293d2ddfbbf4bcbd214858d1404d708d3214" # linux-arm64

      def install
        bin.install "pilot-linux-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/pilot/releases/latest/download/pilot-linux-x64"
      sha256 "d52542fc3dcf3c2e1c97be3312208fb7d69ed391a2215d90dca3dbac04fcc015" # linux-x64

      def install
        bin.install "pilot-linux-x64" => "pilot"
      end
    end
  end

  test do
    assert_match "pilot", shell_output("#{bin}/pilot --version")
  end
end
