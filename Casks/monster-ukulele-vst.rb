cask "monster-ukulele-vst" do
  version "1"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=14jrKCwKAXbvKuh341lnHmDJ57J8xQpu7&export=download&confirm=t"
  name "Monster Ukulele v1 VST"
  desc "VST plugin installer"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  pkg "MONSTER.Ukulele.v1.vst.pkg"

  postflight_steps do
    run "/bin/echo", args:         ["Removing macOS quarantine attributes from Monster Ukulele v1 VST..."],
                     print_stdout: true
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine",
                                 "/Library/Audio/Plug-Ins/VST/MONSTER Ukulele v1.vst"],
                          sudo: true
  end
end
