cask "hanon-b70-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/HaNonB70_osx_64_vst3.zip"
  name "HaNon B70"
  desc "HaNon B70 emulates the famous Hammond B3 drawbar organ coupled with a Leslie 122 rotating speaker."
  homepage "https://plugins4free.com/plugin/3131"
  depends_on :macos
  artifact "HaNonB70.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/HaNonB70.vst3"
end
