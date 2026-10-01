cask "regrader" do
  version "1.0.5"
  sha256 "d3b77b466f270888fb866e67c86fafcdfafc9ff781420ca9ab77da7c7987f356"
  url "https://github.com/igorski/regrader/releases/download/1.0.5/regrader.1.0.5_macos.zip"
  name "regrader"
  desc "Free audio plugin"
  homepage "https://github.com/igorski/regrader"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    move "AU/Regrader AUV3.app/Contents/PlugIns/auv3.appex/Contents/PlugIns/plugin.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/plugin.vst3"
  end
end
