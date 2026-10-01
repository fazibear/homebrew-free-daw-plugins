cask "emberex" do
  version "1.0.1"
  sha256 "ae3877ebfbf4e3bf15d681239d7ad306e4aa9fdf3a1ff7065efd85806ce70402"
  url "https://github.com/remiblaze/Emberex/releases/download/v1.0.1/Emberex_Installer.pkg"
  name "Emberex"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/Emberex"
  depends_on :macos
  pkg "Emberex_Installer.pkg"
end
