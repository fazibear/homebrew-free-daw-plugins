cask "elsita-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Elsita-V_MacAU.zip"
  name "Elsita"
  desc "Elsita is a soviet analog drum synthesizer produced from 1989 until 1991, when RMIF went bankrupt."
  homepage "https://plugins4free.com/plugin/3125"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Elsita-V (Mac AU)/Elsita.component", "{{user}}/Library/Audio/Plug-Ins/Components/Elsita.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components/Presets/MODE MACHINES/Elsita"
    copy "Elsita-V (Mac AU)/Presets/MODE MACHINES/Elsita/Analog Set.aupreset", "{{user}}/Library/Audio/Plug-Ins/Components/Presets/MODE MACHINES/Elsita/Analog Set.aupreset"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components/Presets/MODE MACHINES/Elsita"
    copy "Elsita-V (Mac AU)/Presets/MODE MACHINES/Elsita/Fat kit.aupreset", "{{user}}/Library/Audio/Plug-Ins/Components/Presets/MODE MACHINES/Elsita/Fat kit.aupreset"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components/Presets/MODE MACHINES/Elsita"
    copy "Elsita-V (Mac AU)/Presets/MODE MACHINES/Elsita/Noise kit.aupreset", "{{user}}/Library/Audio/Plug-Ins/Components/Presets/MODE MACHINES/Elsita/Noise kit.aupreset"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components/Presets/MODE MACHINES/Elsita"
    copy "Elsita-V (Mac AU)/Presets/MODE MACHINES/Elsita/Tight set.aupreset", "{{user}}/Library/Audio/Plug-Ins/Components/Presets/MODE MACHINES/Elsita/Tight set.aupreset"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components/Presets/MODE MACHINES/Elsita"
    copy "Elsita-V (Mac AU)/Presets/MODE MACHINES/Elsita/Void.aupreset", "{{user}}/Library/Audio/Plug-Ins/Components/Presets/MODE MACHINES/Elsita/Void.aupreset"
  end
end
