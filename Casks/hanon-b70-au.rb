cask "hanon-b70-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/HaNonB70_osx_64_au.zip"
  name "HaNon B70"
  desc "HaNon B70 emulates the famous Hammond B3 drawbar organ coupled with a Leslie 122 rotating speaker."
  homepage "https://plugins4free.com/plugin/3131"
  depends_on :macos
  artifact "HaNonB70.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/HaNonB70.component"
end
