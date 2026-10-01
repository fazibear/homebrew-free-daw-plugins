cask "serpo-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Serpo-Mac-VST.zip"
  name "Serpo"
  desc "Serpo is an extremely simple to use free virtual instrument packed with original sounds recorded by artist from all over the world ."
  homepage "https://plugins4free.com/plugin/2567"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "Serpo - Mac - VST/Serpo.vst", "{{user}}/Library/Audio/Plug-Ins/VST/Serpo.vst"
  end
end
