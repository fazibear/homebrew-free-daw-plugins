cask "orbitixraw" do
  version "1.0.1"
  sha256 "c11551c916784f18b3869354397497feda4ea33be909257d51ac206edfbd3138"
  url "https://github.com/remiblaze/OrbitixRaw/releases/download/v1.0.1/OrbitixRaw_Installer.pkg"
  name "OrbitixRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/OrbitixRaw"
  depends_on :macos
  pkg "OrbitixRaw_Installer.pkg"
end
