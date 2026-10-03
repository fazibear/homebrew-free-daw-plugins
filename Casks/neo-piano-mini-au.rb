cask "neo-piano-mini-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Neo_Piano_mini_Mac.zip"
  name "Neo Piano mini"
  desc "Neo Piano mini is a sampled Yamaha C7 concert Grand Piano."
  homepage "https://plugins4free.com/plugin/2346"
  depends_on :macos
  pkg "Neo_Piano_mini_Installer.pkg"
end
