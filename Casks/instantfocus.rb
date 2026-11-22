cask "instantfocus" do
  version "0.1.1"
  sha256 "e813730c7fe25dede85ab7ff17d29f75a8c80b0e87bd821d61c3c6e5c5e05f88"

  url "https://github.com/vasilgen/instant-focus/releases/download/v#{version}/InstantFocus-#{version}.zip"
  name "InstantFocus"
  desc "Jump to any app with one shortcut, on any Space, without the animation"
  homepage "https://github.com/vasilgen/instant-focus"

  depends_on macos: ">= :ventura"

  app "InstantFocus.app"

  zap trash: "~/Library/Preferences/io.github.vasilgen.InstantFocus.plist"
end
