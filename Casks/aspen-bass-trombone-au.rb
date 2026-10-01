cask "aspen-bass-trombone-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Aspen-Bass-Trombone_component.zip"
  name "Aspen Bass Trombone"
  desc "Aspen Bass Trombone ."
  homepage "https://plugins4free.com/plugin/3317"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Aspen Bass Trombone.component", "{{user}}/Library/Audio/Plug-Ins/Components/Aspen Bass Trombone.component"
  end
end
