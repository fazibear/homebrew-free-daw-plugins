cask "kick-n-snare-ex-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/KicknSnareEX_MacAU.zip"
  name "Kick-n-Snare EX"
  desc "Kick-n-Snare EX is a drum rompler for EDM ."
  homepage "https://plugins4free.com/plugin/2963"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Kick n Snare EX/Kick n Snare EX.component", "{{user}}/Library/Audio/Plug-Ins/Components/Kick n Snare EX.component"
  end
end
