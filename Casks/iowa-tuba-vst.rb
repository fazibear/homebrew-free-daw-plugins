cask "iowa-tuba-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Iowa_Tuba.vst.zip"
  name "Iowa Tuba"
  desc "Iowa Tuba is a sampled tuba from the University of Iowa Electronic Music Studios."
  homepage "https://plugins4free.com/plugin/2422"
  depends_on :macos
  artifact "Iowa Tuba.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Iowa Tuba.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Iowa Tuba.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Iowa Tuba.vst"]
  end
end
