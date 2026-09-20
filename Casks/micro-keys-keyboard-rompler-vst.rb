cask "micro-keys-keyboard-rompler-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Micro-Keys_MAC.zip"
  name "Micro Keys Keyboard rompler"
  desc "Free audio plugin"
  homepage "https://plugins4free.com/plugin/3897"
  depends_on :macos
  artifact "Micro-Keys_MAC", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
