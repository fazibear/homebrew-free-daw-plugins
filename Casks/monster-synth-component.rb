cask "monster-synth-component" do
  version "2"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=18q6Cl-sdCvjALrgDsZNhJ8kJvzapsfBF&export=download&confirm=t"
  name "Monster Synth v2 COMPONENT"
  desc "COMPONENT plugin installer"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  pkg "MONSTER.Synth.v2.component.pkg"

  postflight_steps do
    run "/bin/echo", args:         ["Removing macOS quarantine attributes from Monster Synth v2 COMPONENT..."],
                     print_stdout: true
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine",
                                 "/Library/Audio/Plug-Ins/Components/MONSTER Synth v2.component"],
                          sudo: true
  end
end
