cask "free-piano-3-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Free-Piano-3_AU.zip"
  name "Free Piano 3"
  desc "Free Piano 3 is a piano and strings hybrid plugin."
  homepage "https://plugins4free.com/plugin/3868"
  depends_on :macos
  artifact "Free Piano 3 AU/FreePiano3.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/FreePiano3.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/FreePiano3.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/FreePiano3.component"]
  end
end
