cask "voc-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Voc_MacVST.zip"
  name "Voc"
  desc "Voc emulates glottis and shape of vocal tract."
  homepage "https://plugins4free.com/plugin/2834"
  depends_on :macos
  artifact "Voc.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Voc.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Voc.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Voc.vst"]
  end
end
