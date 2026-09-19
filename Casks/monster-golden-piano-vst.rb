cask "monster-golden-piano-vst" do
  version "2"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=1ji2gVXB9L0AarnwL46XkvbcCTiL4_vep&export=download&confirm=t"
  name "Golden Piano v2 VST"
  desc "VST plugin installer"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  pkg "GOLDEN.Piano.v2.vst.pkg"

  postflight_steps do
    run "/bin/echo", args:         ["Removing macOS quarantine attributes from Golden Piano v2 VST..."],
                     print_stdout: true
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine",
                                 "/Library/Audio/Plug-Ins/VST/GOLDEN Piano v2.vst"],
                          sudo: true
  end
end
