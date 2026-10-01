cask "reevr" do
  version "1.4.0"
  sha256 "92e069e942ac0f286169b32d0fd175483a10e07da6470a3582c93cc8a741c9e3"
  url "https://github.com/tiagolr/reevr/releases/download/v1.4.0/reevr-macos-v1.4.0.zip"
  name "reevr"
  desc "Free audio plugin"
  homepage "https://github.com/tiagolr/reevr"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "reevr-macos/AU/REEV-R.component", "{{user}}/Library/Audio/Plug-Ins/Components/REEV-R.component"
  end
end
