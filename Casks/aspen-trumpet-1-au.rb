cask "aspen-trumpet-1-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Aspen-Trumpet-1_component.zip"
  name "Aspen Trumpet 1"
  desc "Aspen Trumpet 1."
  homepage "https://plugins4free.com/plugin/3321"
  depends_on :macos
  artifact "Aspen Trumpet 1.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Aspen Trumpet 1.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Aspen Trumpet 1.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Aspen Trumpet 1.component"]
  end
end
