cask "monster-ethnica-vst3" do
  version "2"
  sha256 :no_check

  url "https://drive.usercontent.google.com/download?id=1qt2iA2_qa_tavUT9k4K8yYhlg0_S_4AN&export=download&confirm=t"
  name "Monster Ethnica v2 VST3"
  desc "VST3 plugin installer"
  homepage "https://drive.google.com/drive/folders/1GIZic7JgxCLZRI3vQMsQuA13Kk_mB2zb"

  depends_on :macos

  pkg "MONSTER.Ethnica.v2.vst3.pkg"

  postflight_steps do
    run "/bin/echo", args:         ["Removing macOS quarantine attributes from Monster Ethnica v2 VST3..."],
                     print_stdout: true
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine",
                                 "/Library/Audio/Plug-Ins/VST3/MONSTER Ethnica v2.vst3"],
                          sudo: true
  end
end
