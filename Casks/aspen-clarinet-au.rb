cask "aspen-clarinet-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Aspen-Clarinet_component.zip"
  name "Aspen Clarinet"
  desc "Aspen Clarinet."
  homepage "https://plugins4free.com/plugin/3318"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Aspen Clarinet.component", "{{user}}/Library/Audio/Plug-Ins/Components/Aspen Clarinet.component"
  end
end
