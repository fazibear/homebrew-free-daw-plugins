cask "aspen-trumpet-2-trumpet-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Aspen-Trumpet-2_component.zip"
  name "Aspen Trumpet 2 Trumpet"
  desc "Aspen Trumpet 2 Trumpet"
  homepage "https://plugins4free.com/plugin/3322"
  depends_on :macos
  artifact "Aspen-Trumpet-2_component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
