cask "3sampler-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/3Sampler.vst.zip"
  name "3Sampler"
  desc "3Sampler is a WAV / SFZ / OGG sampler for those who want to save their resources using only 3 samples."
  homepage "https://plugins4free.com/plugin/3508"
  depends_on :macos
  artifact "3Sampler.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/3Sampler.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/3Sampler.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/3Sampler.vst"]
  end
end
