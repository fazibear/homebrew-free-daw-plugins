cask "iowa-alto-flute-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Iowa_Alto_Flute.component.zip"
  name "Iowa Alto Flute"
  desc "Iowa Alto Flute is a sampled alto flute from the University of Iowa Electronic Music Studios."
  homepage "https://plugins4free.com/plugin/2327"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Iowa Alto Flute.component", "{{user}}/Library/Audio/Plug-Ins/Components/Iowa Alto Flute.component"
  end
end
