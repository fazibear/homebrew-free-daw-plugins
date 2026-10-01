cask "symptohm-pe-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/SymptohmPE-130-macosx64-vst-free.dmg"
  name "Symptohm PE"
  desc "Symptohm Performer Edition is an easy to use preset synth , built from the Symptohm:Melohman synth engine."
  homepage "https://plugins4free.com/plugin/1506"
  depends_on :macos
  container type: :dmg
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "SymptohmPE VST2 Installer.app/Contents/Resources/classic/!MACOS@-32765@aplg!/VST/SymptohmPE_VST2MachO.vst", "{{user}}/Library/Audio/Plug-Ins/VST/SymptohmPE_VST2MachO.vst"
  end
end
