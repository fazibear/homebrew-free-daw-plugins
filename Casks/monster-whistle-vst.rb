cask "monster-whistle-vst" do
  version "1"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=1LVoQDUY2PVdBVJkvh1N1v-Ct0shEFXej&export=download&confirm=t"
  name "Monster Whistle v1 VST"
  desc "VST plugin installer"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  pkg "MONSTER.Whistle.v1.vst.pkg"

  postflight_steps do
    run "/bin/echo", args:         ["Removing macOS quarantine attributes from Monster Whistle v1 VST..."],
                     print_stdout: true
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine",
                                 "/Library/Audio/Plug-Ins/VST/MONSTER Whistle v1.vst"],
                          sudo: true
  end
end
