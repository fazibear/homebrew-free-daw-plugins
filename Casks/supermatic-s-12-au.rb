cask "supermatic-s-12-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Supermatic-S12_MacAU.zip"
  name "Supermatic S-12"
  desc "Supermatic S-12 is a vintage analog drum machine ."
  homepage "https://plugins4free.com/plugin/3651"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Supermatic S12 (Mac AU)/Supermatic S12.component", "{{user}}/Library/Audio/Plug-Ins/Components/Supermatic S12.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components/Presets/MODE MACHINES/Supermatic S12"
    copy "Supermatic S12 (Mac AU)/Presets/MODE MACHINES/Supermatic S12/Original Set.aupreset", "{{user}}/Library/Audio/Plug-Ins/Components/Presets/MODE MACHINES/Supermatic S12/Original Set.aupreset"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components/Presets/MODE MACHINES/Supermatic S12"
    copy "Supermatic S12 (Mac AU)/Presets/MODE MACHINES/Supermatic S12/Tuned 1.aupreset", "{{user}}/Library/Audio/Plug-Ins/Components/Presets/MODE MACHINES/Supermatic S12/Tuned 1.aupreset"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components/Presets/MODE MACHINES/Supermatic S12"
    copy "Supermatic S12 (Mac AU)/Presets/MODE MACHINES/Supermatic S12/Tuned 2.aupreset", "{{user}}/Library/Audio/Plug-Ins/Components/Presets/MODE MACHINES/Supermatic S12/Tuned 2.aupreset"
  end
end
