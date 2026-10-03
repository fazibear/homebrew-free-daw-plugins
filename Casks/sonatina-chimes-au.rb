cask "sonatina-chimes-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Chimes.component.zip"
  name "Sonatina Chimes"
  desc "Sonatina Chimes is a sampled tubular bells instrument from the Sonatina Orchestra public domain library."
  homepage "https://plugins4free.com/plugin/2328"
  depends_on :macos
  artifact "Sonatina Chimes.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Chimes.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Chimes.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Chimes.component"]
  end
end
