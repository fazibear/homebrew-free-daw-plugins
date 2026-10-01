cask "iowa-tenor-trombone-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Iowa_Tenor_Trombone.component.zip"
  name "Iowa Tenor Trombone"
  desc "Iowa Tenor Trombone is a sampled tenor trombone from the University of Iowa Electronic Music Studios."
  homepage "https://plugins4free.com/plugin/2420"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Iowa Tenor Trombone.component", "{{user}}/Library/Audio/Plug-Ins/Components/Iowa Tenor Trombone.component"
  end
end
