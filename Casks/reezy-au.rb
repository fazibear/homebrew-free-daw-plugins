cask "reezy-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Reezy_Mac.zip"
  name "Reezy"
  desc "Reezy is a deep reese bass rompler with some variable parameters like filter, distortion, portamento."
  homepage "https://plugins4free.com/plugin/3239"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Reezy Official (Mac)/Reezy.component", "{{user}}/Library/Audio/Plug-Ins/Components/Reezy.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    copy "Reezy Official (Mac)/Reezy_1_0_0_Samples.hr1", "{{user}}/Library/Audio/Plug-Ins/Components/Reezy_1_0_0_Samples.hr1"
  end
end
