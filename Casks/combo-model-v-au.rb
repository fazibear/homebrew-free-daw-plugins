cask "combo-model-v-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/ComboV_133_AU.zip"
  name "Combo Model V"
  desc "Combo Model V is a combo organ modelled after a well-known combo organ from the 1960s . 4-octave C-to-C keyboard."
  homepage "https://plugins4free.com/plugin/1004"
  depends_on :macos
  artifact "ComboV_133_AU", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
