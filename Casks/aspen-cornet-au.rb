cask "aspen-cornet-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Aspen-Cornet_component.zip"
  name "Aspen Cornet"
  desc "Aspen Cornet ."
  homepage "https://plugins4free.com/plugin/3319"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Aspen Cornet.component", "{{user}}/Library/Audio/Plug-Ins/Components/Aspen Cornet.component"
  end
end
