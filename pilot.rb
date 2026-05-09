class Pilot < Formula
  desc "Your AI crew, ready to fly. Medal Social's AI-powered CLI platform."
  homepage "https://github.com/Medal-Social/Pilot"
  license "Apache-2.0"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.5.1/pilot-darwin-arm64"
      sha256 "383e81d8f4846e26d1319d91066d3ee752dfa68ce7a4bcdee484ed119666db39" # darwin-arm64

      def install
        bin.install "pilot-darwin-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.5.1/pilot-darwin-x64"
      sha256 "0727aaf9c6b2433d3ffd8b8333d9646241bd1f2ed646783f7b4f60ff76fcada8" # darwin-x64

      def install
        bin.install "pilot-darwin-x64" => "pilot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.5.1/pilot-linux-arm64"
      sha256 "6bcabb454b284a85d9c9fe82e29ec4215d0632364fc0baabfea25c621282fd73" # linux-arm64

      def install
        bin.install "pilot-linux-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.5.1/pilot-linux-x64"
      sha256 "82f1fc2d1b091ec2356cb151df405b50dc290a68069ade7cbe28e7f559b039e1" # linux-x64

      def install
        bin.install "pilot-linux-x64" => "pilot"
      end
    end
  end

  test do
    assert_match "pilot", shell_output("#{bin}/pilot --version")
  end
end
