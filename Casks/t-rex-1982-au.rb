cask "t-rex-1982-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/TRex1982_MacAU.zip"
  name "T.Rex 1982"
  desc "T.Rex 1982 is a processed LinnDrum rompler ."
  homepage "https://plugins4free.com/plugin/3167"
  depends_on :macos
  artifact "T.Rex 1982.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/T.Rex 1982.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/T.Rex 1982.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/T.Rex 1982.component"]
  end
end
