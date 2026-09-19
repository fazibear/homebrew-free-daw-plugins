cask "monster-octachord-vst3" do
  version "1"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=19RxrS00bfJ45sJx8F2DHP1_l0G6siRVg&export=download&confirm=t"
  name "Monster Octachord v1 VST3"
  desc "VST3 plugin installer"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  pkg "MONSTER.OctaChord.v1.vst3.pkg"

  postflight_steps do
    run "/bin/echo", args:         ["Removing macOS quarantine attributes from Monster Octachord v1 VST3..."],
                     print_stdout: true
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine",
                                 "/Library/Audio/Plug-Ins/VST3/MONSTER OctaChord v1.vst3"],
                          sudo: true
  end
end
