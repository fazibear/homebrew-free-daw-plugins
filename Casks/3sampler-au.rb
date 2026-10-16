cask "3sampler-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/3Sampler.component.zip"
  name "3Sampler"
  desc "3Sampler is a WAV / SFZ / OGG sampler for those who want to save their resources using only 3 samples."
  homepage "https://plugins4free.com/plugin/3508"
  depends_on :macos
  artifact "3Sampler.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/3Sampler.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/3Sampler.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/3Sampler.component"]
  end
end
