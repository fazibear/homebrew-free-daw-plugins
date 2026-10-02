cask "voxspace" do
  version "2.6.1"
  sha256 "da9578b1256b6a3afed5d599b550f00f745c05e12c4d968144b65c909281d7b8"
  url "https://github.com/alexeydelgado/VoxSpace/releases/download/v2.6.1/VoxSpace-2.6.1.dmg"
  name "VoxSpace"
  desc "Free audio plugin"
  homepage "https://github.com/alexeydelgado/VoxSpace"
  depends_on :macos
  container type: :dmg
  app "VoxSpace.app"
end
