cask "os-251-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/OS-251-macOS.dmg"
  name "OS-251"
  desc "OS-251 is a pure digital lo-fi synthesizer ."
  homepage "https://plugins4free.com/plugin/3539"
  depends_on :macos
  container type: :dmg
  pkg "OS-251.pkg"
end
