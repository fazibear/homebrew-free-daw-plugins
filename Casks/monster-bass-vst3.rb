cask "monster-bass-vst3" do
  version "2"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=12JU5BJIuIy1E1l5Yzfi9Z4mXicrIDgkt&export=download&confirm=t"
  name "Monster Bass v2 VST3"
  desc "VST3 plugin installer"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  pkg "MONSTER.Bass.v2.vst3.pkg"

  postflight_steps do
    run "/bin/echo", args:         ["Removing macOS quarantine attributes from Monster Bass v2 VST3..."],
                     print_stdout: true
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine",
                                 "/Library/Audio/Plug-Ins/VST3/MONSTER Bass v2.vst3"],
                          sudo: true
  end
end
