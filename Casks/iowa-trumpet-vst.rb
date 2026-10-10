cask "iowa-trumpet-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Iowa_Trumpet.vst.zip"
  name "Iowa Trumpet"
  desc "Iowa Trumpet is a sampled trumpet from the University of Iowa Electronic Music Studios."
  homepage "https://plugins4free.com/plugin/2421"
  depends_on :macos
  artifact "Iowa Trumpet.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Iowa Trumpet.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Iowa Trumpet.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Iowa Trumpet.vst"]
  end
end
