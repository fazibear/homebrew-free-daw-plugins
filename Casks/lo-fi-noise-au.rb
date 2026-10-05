cask "lo-fi-noise-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Lo-Fi-Noise%20_Mac_AU.zip"
  name "Lo-Fi Noise"
  desc "Lo-Fi Noise is a white / pink noise generator ."
  homepage "https://plugins4free.com/plugin/3400"
  depends_on :macos
  artifact "Lo-Fi Noise st-2.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Lo-Fi Noise st-2.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Lo-Fi Noise st-2.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Lo-Fi Noise st-2.component"]
  end
end
