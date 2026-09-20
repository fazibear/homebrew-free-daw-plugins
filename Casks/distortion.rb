cask "distortion" do
  version "2.3.0"
  sha256 "b6759ae9f8b381de9d66cec98a7420825f8b5faf75a7698d9e5f51514b4cc3e2"
  url "https://github.com/elarmuzik1993/Distortion/releases/download/v2.3.0/SledgeDistortion-2.3.0-macOS.pkg"
  name "Distortion"
  desc "Free audio plugin"
  homepage "https://github.com/elarmuzik1993/Distortion"
  depends_on :macos
  pkg "SledgeDistortion-2.3.0-macOS.pkg"
end
