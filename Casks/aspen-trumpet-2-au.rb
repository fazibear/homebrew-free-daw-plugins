cask "aspen-trumpet-2-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Aspen-Trumpet-2_component.zip"
  name "Aspen Trumpet 2"
  desc "Aspen Trumpet 2."
  homepage "https://plugins4free.com/plugin/3322"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Aspen Trumpet 2.component", "{{user}}/Library/Audio/Plug-Ins/Components/Aspen Trumpet 2.component"
  end
end
