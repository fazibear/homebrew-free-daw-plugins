cask "multimeter" do
  version "MultimeterUpdate1"
  sha256 "638302d732dd1585ca541ae7c41695121a39c49080845e4347aafd2d597e6a17"
  url "https://github.com/israelftci/Multimeter/releases/download/MultimeterUpdate1/Mac-Multimeter_FREE_v283.zip"
  name "Multimeter"
  desc "Free audio plugin"
  homepage "https://github.com/israelftci/Multimeter"
  depends_on :macos
  pkg "Multimeter_FREE_v2.8.3.pkg"
end
