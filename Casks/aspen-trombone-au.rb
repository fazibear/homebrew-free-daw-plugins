cask "aspen-trombone-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Aspen-Trombone_component.zip"
  name "Aspen Trombone"
  desc "Aspen Trombone ."
  homepage "https://plugins4free.com/plugin/3320"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Aspen Trombone.component", "{{user}}/Library/Audio/Plug-Ins/Components/Aspen Trombone.component"
  end
end
