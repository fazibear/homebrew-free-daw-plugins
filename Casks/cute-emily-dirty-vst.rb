cask "cute-emily-dirty-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Karoryfer_Cute_Emily_Dirty.vst.zip"
  name "Cute Emily Dirty"
  desc "Cute Emily Guitar is a sampled electric guitar ."
  homepage "https://plugins4free.com/plugin/2316"
  depends_on :macos
  artifact "Karoryfer Cute Emily Dirty.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Karoryfer Cute Emily Dirty.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Karoryfer Cute Emily Dirty.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Karoryfer Cute Emily Dirty.vst"]
  end
end
