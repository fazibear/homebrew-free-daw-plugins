cask "phoqer" do
  version "1.0.1"
  sha256 "6a0c2e762319fbea60705cdfda2cf973732ca56d2665ddcfdcc2068a109df59b"
  url "https://github.com/lew0nn/phoqer/releases/download/v1.0.1/PHOQER-1.0.1-macOS-AU.zip"
  name "phoqer"
  desc "Free audio plugin"
  homepage "https://github.com/lew0nn/phoqer"
  depends_on :macos
  artifact "PHOQER.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/PHOQER.component"
end
