cask "monster-piano-component" do
  version "3"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=1Onx4mSVg-LGDODBFPiz45MIHf7-F_cy3&export=download&confirm=t"
  name "Monster Piano v3 COMPONENT"
  desc "COMPONENT plugin installer"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  pkg "MONSTER.Piano.v3.component.pkg"

  postflight_steps do
    run "/bin/echo", args:         ["Removing macOS quarantine attributes from Monster Piano v3 COMPONENT..."],
                     print_stdout: true
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine",
                                 "/Library/Audio/Plug-Ins/Components/MONSTER Piano v3.component"],
                          sudo: true
  end
end
