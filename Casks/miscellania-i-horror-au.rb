cask "miscellania-i-horror-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/MiscellaniaI_AU.zip"
  name "Miscellania I : Horror"
  desc "Miscellania I : Horror is a fun little plugin of six whole octaves capable of spooky effects and more..."
  homepage "https://plugins4free.com/plugin/1752"
  depends_on :macos
  artifact "MiscellaniaI_AU.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/MiscellaniaI_AU.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/MiscellaniaI_AU.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/MiscellaniaI_AU.component"]
  end
end
