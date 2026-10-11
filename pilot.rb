class Pilot < Formula
  desc "Your AI crew, ready to fly. Medal Social's AI-powered CLI platform."
  homepage "https://github.com/Medal-Social/Pilot"
  license "Apache-2.0"
  version "0.7.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.7.3/pilot-darwin-arm64"
      sha256 "48a264f4bc727ca528463815eb87da001bf194c099be7ce8eb27f359aa7f2b26" # darwin-arm64

      def install
        bin.install "pilot-darwin-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.7.3/pilot-darwin-x64"
      sha256 "9a926889a8883c7b3f09e6f62e398f87d11fc094fc173ab98b6bce8625ea6f8e" # darwin-x64

      def install
        bin.install "pilot-darwin-x64" => "pilot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.7.3/pilot-linux-arm64"
      sha256 "df79e30b377e65c87692d634871c5e2a18d9783a48e918d33eb030d4b24b955d" # linux-arm64

      def install
        bin.install "pilot-linux-arm64" => "pilot"
      end
    else
      url "https://github.com/Medal-Social/Pilot/releases/download/%40medalsocial/pilot%400.7.3/pilot-linux-x64"
      sha256 "919d066655f57c8c0b249fddec08cf15c3e324741eb56653201374cf6db9b22d" # linux-x64

      def install
        bin.install "pilot-linux-x64" => "pilot"
      end
    end
  end

  test do
    assert_match "pilot", shell_output("#{bin}/pilot --version")
  end
end
