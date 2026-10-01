cask "forgex" do
  version "1.1.0"
  sha256 "0d535e6fa0babf0bd118e1d94b9573b11ab08eb0976e3f211e5ea0ddbb25cd63"
  url "https://github.com/remiblaze/Forgex/releases/download/v1.1.0/Forgex_Installer.pkg"
  name "Forgex"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/Forgex"
  depends_on :macos
  pkg "Forgex_Installer.pkg"
end
