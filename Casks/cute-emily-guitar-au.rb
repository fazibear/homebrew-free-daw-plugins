cask "cute-emily-guitar-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Karoryfer_Cute_Emily_Guitar.component.zip"
  name "Cute Emily Guitar"
  desc "Cute Emily Guitar is a sampled electric guitar ."
  homepage "https://plugins4free.com/plugin/2315"
  depends_on :macos
  artifact "Karoryfer Cute Emily Guitar.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Karoryfer Cute Emily Guitar.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Karoryfer Cute Emily Guitar.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Karoryfer Cute Emily Guitar.component"]
  end
end
