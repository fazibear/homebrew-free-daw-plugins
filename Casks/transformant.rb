cask "transformant" do
  version "1.1.0"
  sha256 "0bf173764b09636fa01b15cc009bea14cf4dde5d3fb681a4255559e764a2b56c"
  url "https://github.com/igorski/transformant/releases/download/1.1.0/transformant.1.1.0_macos.zip"
  name "transformant"
  desc "Free audio plugin"
  homepage "https://github.com/igorski/transformant"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    move "AU/Transformant AUV3.app/Contents/PlugIns/auv3.appex/Contents/PlugIns/plugin.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/plugin.vst3"
  end
end
