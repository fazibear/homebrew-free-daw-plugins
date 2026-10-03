cask "instantsampler-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/InstantSampler.zip"
  name "InstantSampler"
  desc "InstantSampler is a realtime recording sampler ."
  homepage "https://plugins4free.com/plugin/915"
  depends_on :macos
  artifact "InstantSampler/Instant Sampler.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Instant Sampler.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Instant Sampler.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Instant Sampler.component"]
  end
end
