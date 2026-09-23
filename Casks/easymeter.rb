cask "easymeter" do
  version "0.2.0"
  sha256 "5dacf9b3b81b90273161a0661cb5b5e7ea244e21136640dee4b88a7681344921"
  url "https://github.com/bgivenb/EasyMeter/releases/download/v0.2.0/EasyMeter-0.2.0-macOS-universal-AU-unsigned.zip"
  name "EasyMeter"
  desc "Free audio plugin"
  homepage "https://github.com/bgivenb/EasyMeter"
  depends_on :macos
  artifact "EasyMeter.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
