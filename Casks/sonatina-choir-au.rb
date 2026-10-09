cask "sonatina-choir-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Choir.component.zip"
  name "Sonatina Choir"
  desc "Sonatina Choir is are sampled male and female choir s."
  homepage "https://plugins4free.com/plugin/2310"
  depends_on :macos
  artifact "Sonatina Choir.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Choir.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Choir.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Choir.component"]
  end
end
