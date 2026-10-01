cask "the-grand-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/DSK_The_Grand_-_macVST.zip"
  name "The Grand"
  desc "The Grand is a sampled Grand Piano ."
  homepage "https://plugins4free.com/plugin/2766"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "DSK The Grand - macVST/DSK The Grand.vst", "{{user}}/Library/Audio/Plug-Ins/VST/DSK The Grand.vst"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    copy "DSK The Grand - macVST/DSK Music - Readme.txt", "{{user}}/Library/Audio/Plug-Ins/VST/DSK Music - Readme.txt"
  end
end
