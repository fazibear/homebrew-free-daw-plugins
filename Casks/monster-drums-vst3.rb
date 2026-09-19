cask "monster-drums-vst3" do
  version "3"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=1G2yhb2xrxpXOCC79Ted5KS5jiRaMZ9Ev&export=download&confirm=t"
  name "Monster Drums v3 VST3"
  desc "VST3 plugin installer"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  pkg "MONSTER.Drums.v3.vst3.pkg"

  postflight_steps do
    run "/bin/echo", args:         ["Removing macOS quarantine attributes from Monster Drums v3 VST3..."],
                     print_stdout: true
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine",
                                 "/Library/Audio/Plug-Ins/VST3/MONSTER Drums v3.vst3"],
                          sudo: true
  end
end
