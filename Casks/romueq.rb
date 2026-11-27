cask "romueq" do
  version "1.3.0"
  sha256 "f40a042e35769fe6110ab9478928aefb11cbaf766265df22a3242f5729211746"
  url "https://github.com/rdespres87/RomuEq/releases/download/v1.3.0/Equaform-8-v1.3.0.dmg"
  name "RomuEq"
  desc "Free audio plugin"
  homepage "https://github.com/rdespres87/RomuEq"
  depends_on :macos
  container type: :dmg
  pkg "Equaform-8-Installer.pkg"
end
