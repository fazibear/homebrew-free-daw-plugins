cask "iowa-soprano-sax-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Iowa_Soprano_Sax.vst.zip"
  name "Iowa Soprano Sax"
  desc "Iowa Soprano Sax is a sampled soprano saxophone from the University of Iowa Electronic Music Studios."
  homepage "https://plugins4free.com/plugin/2512"
  depends_on :macos
  artifact "Iowa Soprano Sax.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Iowa Soprano Sax.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Iowa Soprano Sax.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Iowa Soprano Sax.vst"]
  end
end
