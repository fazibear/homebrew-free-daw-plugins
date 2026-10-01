cask "fogpad" do
  version "1.0.3"
  sha256 "206bfe64ea8b26067f3d550d24ba6e93f5550c1f588e92c2b3d3128c8ba1dc0a"
  url "https://github.com/igorski/fogpad/releases/download/1.0.3/fogpad.1.0.3_macos.zip"
  name "fogpad"
  desc "Free audio plugin"
  homepage "https://github.com/igorski/fogpad"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "VST/fogpad.vst", "{{user}}/Library/Audio/Plug-Ins/VST/fogpad.vst"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    move "VST3/fogpad.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/fogpad.vst3"
    mkdir_p "{{user}}/Applications"
    copy "AU/Fogpad AUV3.app", "{{user}}/Applications/Fogpad AUV3.app"
  end
end
