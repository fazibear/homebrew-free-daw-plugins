cask "reezy-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Reezy_Mac.zip"
  name "Reezy"
  desc "Reezy is a deep reese bass rompler with some variable parameters like filter, distortion, portamento."
  homepage "https://plugins4free.com/plugin/3239"
  depends_on :macos
  artifact "Reezy Official (Mac)/Reezy.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Reezy.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Reezy.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Reezy.component"]
  end
end
