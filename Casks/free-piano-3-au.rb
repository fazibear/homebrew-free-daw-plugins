cask "free-piano-3-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Free-Piano-3_AU.zip"
  name "Free Piano 3"
  desc "Free Piano 3 is a piano and strings hybrid plugin."
  homepage "https://plugins4free.com/plugin/3868"
  depends_on :macos
  artifact "Free-Piano-3_AU", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
