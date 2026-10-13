cask "micro-piano-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Micro-Piano-MAC.zip"
  name "Micro Piano"
  desc "Micro Piano isa a classic house piano ."
  homepage "https://plugins4free.com/plugin/3865"
  depends_on :macos
  artifact "Micro Piano.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Micro Piano.vst"
end
