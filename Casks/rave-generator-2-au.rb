cask "rave-generator-2-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/RaveGenerator2_MacAU.zip"
  name "Rave Generator 2"
  desc "Rave Generator 2 is an upgrade of Rave Generator: a rompler with a lot of funky rave stabs / samples coming straight from the 90s."
  homepage "https://plugins4free.com/plugin/2856"
  depends_on :macos
  artifact "RaveGenerator2.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/RaveGenerator2.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/RaveGenerator2.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/RaveGenerator2.component"]
  end
end
