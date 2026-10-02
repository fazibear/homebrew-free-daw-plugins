cask "hercules-v3-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Hercules-V3_%28MacOS%29.zip"
  name "Hercules V3"
  desc "Hercules V2 is a Supersaw synthesizer ."
  homepage "https://plugins4free.com/plugin/3456"
  depends_on :macos
  artifact "Hercules-V3_(MacOS).zip.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Hercules-V3_(MacOS).zip.vst"
end
