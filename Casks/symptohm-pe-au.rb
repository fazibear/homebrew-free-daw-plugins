cask "symptohm-pe-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/SymptohmPE-131-macosx64-au-free.dmg"
  name "Symptohm PE"
  desc "Symptohm Performer Edition is an easy to use preset synth , built from the Symptohm:Melohman synth engine."
  homepage "https://plugins4free.com/plugin/1506"
  depends_on :macos
  container type: :dmg
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "SymptohmPE AU Installer.app/Contents/Resources/classic/!MACOS@-32765@acmp!/SymptohmPE_AUMachO.component", "{{user}}/Library/Audio/Plug-Ins/Components/SymptohmPE_AUMachO.component"
  end
end
