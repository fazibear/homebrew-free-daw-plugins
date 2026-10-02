cask "project16-picked-bass-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Project16_Picked_Bass.vst.zip"
  name "Project16 Picked Bass"
  desc "Project16 Picked Bass is a sampled Rickenbacker 4001 bass played with a pick."
  homepage "https://plugins4free.com/plugin/2320"
  depends_on :macos
  artifact "Project16 Picked Bass.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Project16 Picked Bass.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Project16 Picked Bass.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Project16 Picked Bass.vst"]
  end
end
