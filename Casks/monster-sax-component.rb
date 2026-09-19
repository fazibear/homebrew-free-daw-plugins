cask "monster-sax-component" do
  version "1"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=1Gm4mETGhnlTnalK7vc4rIDID1ci291sN&export=download&confirm=t"
  name "Monster Sax v1 COMPONENT"
  desc "COMPONENT plugin installer"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  pkg "MONSTER.Sax.v1.component.pkg"

  postflight_steps do
    run "/bin/echo", args:         ["Removing macOS quarantine attributes from Monster Sax v1 COMPONENT..."],
                     print_stdout: true
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine",
                                 "/Library/Audio/Plug-Ins/Components/MONSTER Sax v1.component"],
                          sudo: true
  end
end
