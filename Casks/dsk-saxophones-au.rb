cask "dsk-saxophones-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/DSK_Saxophones_-_macAU.zip"
  name "DSK Saxophones"
  desc "DSK Saxophones is a Soprano and Tenor sax rompler."
  homepage "https://plugins4free.com/plugin/2160"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "DSK Saxophones - macAU/DSK Saxophones.component", "{{user}}/Library/Audio/Plug-Ins/Components/DSK Saxophones.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    copy "DSK Saxophones - macAU/DSK Music - Readme.txt", "{{user}}/Library/Audio/Plug-Ins/Components/DSK Music - Readme.txt"
  end
end
