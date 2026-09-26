cask "divine-kit-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/divine-kit-multi_OSX.zip"
  name "Divine Kit"
  desc "Divine Kit is an acoustic drum kit made from samples recorded by producer John Haddad."
  homepage "https://plugins4free.com/plugin/2247"
  depends_on :macos
  artifact "Divine-Kit-multi.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
