cask "clog-boxes-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Clog-Boxes_MacAU.zip"
  name "Clog Boxes"
  desc "Clog Boxes is a sampled woodblock set."
  homepage "https://plugins4free.com/plugin/2354"
  depends_on :macos
  artifact "Clog Boxes.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Clog Boxes.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Clog Boxes.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Clog Boxes.component"]
  end
end
