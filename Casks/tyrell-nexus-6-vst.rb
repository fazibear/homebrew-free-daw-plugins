cask "tyrell-nexus-6-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/TyrellN6-V3-Mac-Catalina_3.zip"
  name "Tyrell Nexus 6"
  desc "The Tyrell Nexus 6 is a virtual analog synthesize r."
  homepage "https://plugins4free.com/plugin/1007"
  depends_on :macos
  pkg "TyrellN6_3/TyrellN6 3.0 Installer.pkg"
end
