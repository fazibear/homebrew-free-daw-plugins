cask "musyng-kite-standard-drums-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Musyng_Kite_Standard_Drums.component.zip"
  name "Musyng Kite Standard Drums"
  desc "Musyng Kite Standard Drums is a general MIDI drum kit ."
  homepage "https://plugins4free.com/plugin/2318"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Musyng Kite Standard Drums.component", "{{user}}/Library/Audio/Plug-Ins/Components/Musyng Kite Standard Drums.component"
  end
end
