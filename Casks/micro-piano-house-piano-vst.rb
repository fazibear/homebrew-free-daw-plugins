cask "micro-piano-house-piano-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Micro-Piano-MAC.zip"
  name "Micro Piano House piano"
  desc "Free audio plugin"
  homepage "https://plugins4free.com/plugin/3865"
  depends_on :macos
  artifact "Micro-Piano-MAC", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
