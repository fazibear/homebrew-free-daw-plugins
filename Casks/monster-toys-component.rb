cask "monster-toys-component" do
  version "1"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=1WiY3kTt1UVu5koBDv9FQnK3y1nZhyt2d&export=download&confirm=t"
  name "Monster Toys v1 COMPONENT"
  desc "COMPONENT plugin installer"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  pkg "MONSTER.Toys.v1.component.pkg"

  postflight_steps do
    run "/bin/echo", args:         ["Removing macOS quarantine attributes from Monster Toys v1 COMPONENT..."],
                     print_stdout: true
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine",
                                 "/Library/Audio/Plug-Ins/Components/MONSTER Toys v1.component"],
                          sudo: true
  end
end
