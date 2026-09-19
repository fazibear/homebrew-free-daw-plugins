cask "monster-keyz-vst" do
  version "2"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=1aP8w8TH5mx6AD2ifEFB4Nmjy6rMyNahm&export=download&confirm=t"
  name "Monster Keyz v2 VST"
  desc "VST plugin installer"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  pkg "MONSTER.Keyz.v2.vst.pkg"

  postflight_steps do
    run "/bin/echo", args:         ["Removing macOS quarantine attributes from Monster Keyz v2 VST..."],
                     print_stdout: true
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine",
                                 "/Library/Audio/Plug-Ins/VST/MONSTER Keyz v2.vst"],
                          sudo: true
  end
end
