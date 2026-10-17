cask "voc-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Voc_MacAU.zip"
  name "Voc"
  desc "Voc emulates glottis and shape of vocal tract."
  homepage "https://plugins4free.com/plugin/2834"
  depends_on :macos
  artifact "Voc.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Voc.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Voc.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Voc.component"]
  end
end
