cask "monster-piano-vst" do
  version "3"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=1UX18U2NFrNlDyIRV52JpaH4uxBH2fG-7&export=download&confirm=t"
  name "Monster Piano v3 VST"
  desc "VST plugin installer"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  pkg "MONSTER.Piano.v3.vst.pkg"

  postflight_steps do
    run "/bin/echo", args:         ["Removing macOS quarantine attributes from Monster Piano v3 VST..."],
                     print_stdout: true
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine",
                                 "/Library/Audio/Plug-Ins/VST/MONSTER Piano v3.vst"],
                          sudo: true
  end
end
