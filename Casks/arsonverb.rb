cask "arsonverb" do
  version "1.0.1"
  sha256 "3a4c8fb49dd39058a03a7314e3b6dce62b0e614ba858e54944647da8fd6b808e"
  url "https://github.com/masarray/arsonverb/releases/download/v1.0.1/ArSonVerb-macOS-universal-Standalone-v1.0.1.zip"
  name "arsonverb"
  desc "Free audio plugin"
  homepage "https://github.com/masarray/arsonverb"
  depends_on :macos
  app "ArSonVerb.app"
end
