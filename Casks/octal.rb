cask "octal" do
  version "0.1.0"
  sha256 "ae220b913dba18daaad1e8d4d04e5fb43eb43823b2d6baa5b15f5c0ff00b5077"
  url "https://github.com/kongsjorden/octal/releases/download/v0.1.0/Octal-0.1.0.pkg"
  name "octal"
  desc "Free audio plugin"
  homepage "https://github.com/kongsjorden/octal"
  depends_on :macos
  pkg "Octal-0.1.0.pkg"
end
