cask "the-grand-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/DSK_The_Grand_-_macAU.zip"
  name "The Grand"
  desc "The Grand is a sampled Grand Piano ."
  homepage "https://plugins4free.com/plugin/2766"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "DSK The Grand - macAU/DSK The Grand.component", "{{user}}/Library/Audio/Plug-Ins/Components/DSK The Grand.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    copy "DSK The Grand - macAU/DSK Music - Readme.txt", "{{user}}/Library/Audio/Plug-Ins/Components/DSK Music - Readme.txt"
  end
end
