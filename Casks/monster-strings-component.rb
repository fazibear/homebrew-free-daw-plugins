cask "monster-strings-component" do
  version "1"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=149_o8BrK4mmQohHwSn2pjIJGkLkoYsy-&export=download&confirm=t"
  name "Monster Strings v1 COMPONENT"
  desc "COMPONENT plugin installer"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  pkg "MONSTER.Strings.v1.component.pkg"

  postflight_steps do
    run "/bin/echo", args:         ["Removing macOS quarantine attributes from Monster Strings v1 COMPONENT..."],
                     print_stdout: true
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine",
                                 "/Library/Audio/Plug-Ins/Components/MONSTER Strings v1.component"],
                          sudo: true
  end
end
