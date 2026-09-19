cask "monster-drums-component" do
  version "3"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=1qrY0bW_oouYE2wDyRsyZ-n5Hs4VQtF1R&export=download&confirm=t"
  name "Monster Drums v3 COMPONENT"
  desc "COMPONENT plugin installer"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  pkg "MONSTER.Drums.v3.component.pkg"

  postflight_steps do
    run "/bin/echo", args:         ["Removing macOS quarantine attributes from Monster Drums v3 COMPONENT..."],
                     print_stdout: true
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine",
                                 "/Library/Audio/Plug-Ins/Components/MONSTER Drums v3.component"],
                          sudo: true
  end
end
