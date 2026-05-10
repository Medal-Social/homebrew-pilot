class Pilot < Formula
  desc "Your AI crew, ready to fly. Medal Social's AI-powered CLI platform."
  homepage "https://github.com/Medal-Social/Pilot"
  license "Apache-2.0"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.6.0/pilot-darwin-arm64"
      sha256 "2eb911a4ffcc682d0ff309c469e1364b33869f082bd9f686fcced636eadd0b83" # darwin-arm64

      def install
        bin.install "pilot-darwin-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.6.0/pilot-darwin-x64"
      sha256 "f9fecfe1aff8983a18849c97d2d3a6fcc5f80fabd00c73a717d073a98057b9d3" # darwin-x64

      def install
        bin.install "pilot-darwin-x64" => "pilot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.6.0/pilot-linux-arm64"
      sha256 "d652bf747ce30f01fefe147e0fa654f9360220350710a2fcde815f021b054081" # linux-arm64

      def install
        bin.install "pilot-linux-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.6.0/pilot-linux-x64"
      sha256 "3431e5fe7774b99df4e5fa579ef478cb7d0e8fd7870aee63f9a2e32a9a9231d6" # linux-x64

      def install
        bin.install "pilot-linux-x64" => "pilot"
      end
    end
  end

  test do
    assert_match "pilot", shell_output("#{bin}/pilot --version")
  end
end
