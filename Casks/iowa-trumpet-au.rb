cask "iowa-trumpet-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Iowa_Trumpet.component.zip"
  name "Iowa Trumpet"
  desc "Iowa Trumpet is a sampled trumpet from the University of Iowa Electronic Music Studios."
  homepage "https://plugins4free.com/plugin/2421"
  depends_on :macos
  artifact "Iowa Trumpet.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Iowa Trumpet.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Iowa Trumpet.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Iowa Trumpet.component"]
  end
end
