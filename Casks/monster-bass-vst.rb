cask "monster-bass-vst" do
  version "2"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=1WUpYt3t8NF8XC5YTJxjX9XVs4we1DY4I&export=download&confirm=t"
  name "Monster Bass v2 VST"
  desc "VST plugin installer"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  pkg "MONSTER.Bass.v2.vst.pkg"

  postflight_steps do
    run "/bin/echo", args:         ["Removing macOS quarantine attributes from Monster Bass v2 VST..."],
                     print_stdout: true
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine",
                                 "/Library/Audio/Plug-Ins/VST/MONSTER Bass v2.vst"],
                          sudo: true
  end
end
