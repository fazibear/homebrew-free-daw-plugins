cask "fretless-zither-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Zither_v4_AU.zip"
  name "Fretless Zither"
  desc "The Fretless Zither is an antique plucked strings instrument consisting of a sound box with strings going across the top and a soundhole in the middle."
  homepage "https://plugins4free.com/plugin/1710"
  depends_on :macos
  artifact "Zither_v4_AU.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
