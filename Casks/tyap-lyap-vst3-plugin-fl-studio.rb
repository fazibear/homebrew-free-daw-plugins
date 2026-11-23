cask "tyap-lyap-vst3-plugin-fl-studio" do
  version "2.2"
  sha256 "aca528c0dc3c42a288b0ea1af8d465089aa0f02fd780b1eedf8af1820ac0de6a"
  url "https://github.com/rofaan/tyap-lyap-vst3-plugin-fl-studio/releases/download/v2.2/Tyap-Lyap-2.2.0-macOS-Universal.pkg"
  name "tyap-lyap-vst3-plugin-fl-studio"
  desc "Free audio plugin"
  homepage "https://github.com/rofaan/tyap-lyap-vst3-plugin-fl-studio"
  depends_on :macos
  pkg "Tyap-Lyap-2.2.0-macOS-Universal.pkg"
end
