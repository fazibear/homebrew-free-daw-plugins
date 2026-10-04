cask "t-rex-64-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/TRex64_MacAU.zip"
  name "T.Rex 64"
  desc "T.Rex 64 - Proyecto Return is a rompler with the sounds of the legendary Commodore 64C with the SID 8580 sound chip."
  homepage "https://plugins4free.com/plugin/3166"
  depends_on :macos
  artifact "T.Rex 64 v1.01.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/T.Rex 64 v1.01.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/T.Rex 64 v1.01.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/T.Rex 64 v1.01.component"]
  end
end
