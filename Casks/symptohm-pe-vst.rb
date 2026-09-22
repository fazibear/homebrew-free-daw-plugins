cask "symptohm-pe-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/SymptohmPE-130-macosx64-vst-free.dmg"
  name "Symptohm PE"
  desc "Symptohm Performer Edition is an easy to use preset synth , built from the Symptohm:Melohman synth engine."
  homepage "https://plugins4free.com/plugin/1506"
  depends_on :macos
  dmg "SymptohmPE-130-macosx64-vst-free.dmg"
end
