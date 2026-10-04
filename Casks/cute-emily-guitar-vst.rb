cask "cute-emily-guitar-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Karoryfer_Cute_Emily_Guitar.vst.zip"
  name "Cute Emily Guitar"
  desc "Cute Emily Guitar is a sampled electric guitar ."
  homepage "https://plugins4free.com/plugin/2315"
  depends_on :macos
  artifact "Karoryfer Cute Emily Guitar.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Karoryfer Cute Emily Guitar.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Karoryfer Cute Emily Guitar.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Karoryfer Cute Emily Guitar.vst"]
  end
end
