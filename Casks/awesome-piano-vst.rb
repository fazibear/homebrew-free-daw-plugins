cask "awesome-piano-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Awesome-Piano_MacVST.zip"
  name "Awesome Piano"
  desc "Awesome Piano is a sample based dissonant piano ."
  homepage "https://plugins4free.com/plugin/2927"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "Awesome Piano (Mac)/Awesome Piano.vst", "{{user}}/Library/Audio/Plug-Ins/VST/Awesome Piano.vst"
  end
end
