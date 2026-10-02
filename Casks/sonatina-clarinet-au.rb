cask "sonatina-clarinet-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Clarinet.component.zip"
  name "Sonatina Clarinet"
  desc "Sonatina Clarinet is a sampled clarinet ."
  homepage "https://plugins4free.com/plugin/2311"
  depends_on :macos
  artifact "Sonatina Clarinet.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Clarinet.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Clarinet.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Clarinet.component"]
  end
end
