cask "blaahammern" do
  version "1.7.0"
  sha256 "9e027ab79fbe7d60daf2fd3d577961575464956635555fd61a3b8eb5b285c9fb"
  url "https://github.com/trondmorset-lab/Blaahammern/releases/download/v1.7.0/T1revPRO-macOS.pkg"
  name "Blaahammern"
  desc "Free audio plugin"
  homepage "https://github.com/trondmorset-lab/Blaahammern"
  depends_on :macos
  pkg "T1revPRO-macOS.pkg"
end
