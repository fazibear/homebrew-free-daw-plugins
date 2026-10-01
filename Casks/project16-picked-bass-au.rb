cask "project16-picked-bass-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Project16_Picked_Bass.component.zip"
  name "Project16 Picked Bass"
  desc "Project16 Picked Bass is a sampled Rickenbacker 4001 bass played with a pick."
  homepage "https://plugins4free.com/plugin/2320"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Project16 Picked Bass.component", "{{user}}/Library/Audio/Plug-Ins/Components/Project16 Picked Bass.component"
  end
end
