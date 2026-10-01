cask "fretless-zither-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Zither_v4_AU.zip"
  name "Fretless Zither"
  desc "The Fretless Zither is an antique plucked strings instrument consisting of a sound box with strings going across the top and a soundhole in the middle."
  homepage "https://plugins4free.com/plugin/1710"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    copy "Zither_v4_AU.component", "{{user}}/Library/Audio/Plug-Ins/Components/Zither_v4_AU.component", recursive: true
  end
end
