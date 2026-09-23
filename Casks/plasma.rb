cask "plasma" do
  version "1.2.1"
  sha256 :no_check
  url "https://github.com/Dimethoxy/Plasma/releases/download/v1.2.1/plasma-v1.2.1-macos.pkg"
  name "Plasma"
  desc "Free audio plugin"
  homepage "https://github.com/Dimethoxy/Plasma"
  depends_on :macos
  pkg "plasma-v1.2.1-macos.pkg"
end
