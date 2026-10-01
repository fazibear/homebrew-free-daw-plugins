cask "iowa-alto-sax-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Iowa_Alto_Sax.vst.zip"
  name "Iowa Alto Sax"
  desc "Iowa Alto Sax is a sampled alto saxophone from the University of Iowa Electronic Music Studios."
  homepage "https://plugins4free.com/plugin/2513"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "Iowa Alto Sax.vst", "{{user}}/Library/Audio/Plug-Ins/VST/Iowa Alto Sax.vst"
  end
end
