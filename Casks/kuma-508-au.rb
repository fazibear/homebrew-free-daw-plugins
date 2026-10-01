cask "kuma-508-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/BAEU-Kuma-508_MacAU.zip"
  name "Kuma 508"
  desc "Kuma 508 is a hybrid FM / analog synth thats has 5 FM algorithms plus 3 single Oscillators mode."
  homepage "https://plugins4free.com/plugin/3328"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Mac OSX/Kuma 508/Kuma 508.component", "{{user}}/Library/Audio/Plug-Ins/Components/Kuma 508.component"
  end
end
