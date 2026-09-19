cask "monster-soundscapes-component" do
  version "1"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=1_ZKBi25f_1ST4OjHUfnX4p9hehlkekfW&export=download&confirm=t"
  name "Monster Soundscapes v1 COMPONENT"
  desc "COMPONENT plugin installer"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  pkg "MONSTER.Soundscapes.v1.component.pkg"

  postflight_steps do
    run "/bin/echo", args:         ["Removing macOS quarantine attributes from Monster Soundscapes v1 COMPONENT..."],
                     print_stdout: true
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine",
                                 "/Library/Audio/Plug-Ins/Components/MONSTER " \
                                 "Soundscapes v1.component"],
                          sudo: true
  end
end
