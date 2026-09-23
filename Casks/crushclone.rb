cask "crushclone" do
  version "1.0.1"
  sha256 "8f7aa8995adba3eea74c51554bee80fac3dc7608422bd4c5a86674a997317da4"
  url "https://github.com/doxiedevops/CrushClone/releases/download/v1.0.1/CrushClone-v1.0.1-macOS.pkg"
  name "CrushClone"
  desc "Free audio plugin"
  homepage "https://github.com/doxiedevops/CrushClone"
  depends_on :macos
  pkg "CrushClone-v1.0.1-macOS.pkg"
end
