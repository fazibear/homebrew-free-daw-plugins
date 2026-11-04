cask "distortion" do
  version "2.4.0"
  sha256 "53c25d5edf9320df768a78942fd1acf997e6ac79457ad40a7df7b13a59f81244"
  url "https://github.com/elarmuzik1993/Distortion/releases/download/v2.4.0/SledgeDistortion-2.4.0-macOS.pkg"
  name "Distortion"
  desc "Free audio plugin"
  homepage "https://github.com/elarmuzik1993/Distortion"
  depends_on :macos
  pkg "SledgeDistortion-2.4.0-macOS.pkg"
end
