cask "syncla-x-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Syncla-X_MacAU.zip"
  name "Syncla-X"
  desc "Syncla-X is a Synclavier II FM synthesizer emulation."
  homepage "https://plugins4free.com/plugin/2929"
  depends_on :macos
  artifact "Syncla-X [Mac AU]/Syncla-X.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Syncla-X.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Syncla-X.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Syncla-X.component"]
  end
end
