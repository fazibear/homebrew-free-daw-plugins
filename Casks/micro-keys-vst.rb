cask "micro-keys-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Micro-Keys_MAC.zip"
  name "Micro Keys"
  desc "Micro Keys is a keyboard rompler ."
  homepage "https://plugins4free.com/plugin/3897"
  depends_on :macos
  artifact "Micro Keys.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
