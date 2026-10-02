cask "project16-fingered-bass-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Project16_Fingered_Bass.component.zip"
  name "Project16 Fingered Bass"
  desc "Project16 Fingered Bass is a sampled Rickenbacker 4001 bass played with the fingers."
  homepage "https://plugins4free.com/plugin/2319"
  depends_on :macos
  artifact "Project16 Fingered Bass.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Project16 Fingered Bass.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Project16 Fingered Bass.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Project16 Fingered Bass.component"]
  end
end
