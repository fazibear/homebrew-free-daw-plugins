cask "iowa-flute-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Iowa_Flute.component.zip"
  name "Iowa Flute"
  desc "Iowa Flute is a sampled flute from the University of Iowa Electronic Music Studios."
  homepage "https://plugins4free.com/plugin/2419"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Iowa Flute.component", "{{user}}/Library/Audio/Plug-Ins/Components/Iowa Flute.component"
  end
end
