cask "aspen-clarinet-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Aspen-Clarinet_component.zip"
  name "Aspen Clarinet"
  desc "Aspen Clarinet."
  homepage "https://plugins4free.com/plugin/3318"
  depends_on :macos
  artifact "Aspen Clarinet.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
