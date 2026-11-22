cask "instantfocus" do
  version "0.1.0"
  sha256 "fd22fe76af47aa4d69f8478ad5decdec621f712dbf9c13b4180b1fad68b49378"

  url "https://github.com/vasilgen/instant-focus/releases/download/v#{version}/InstantFocus-#{version}.zip"
  name "InstantFocus"
  desc "Jump to any app with one shortcut, on any Space, without the animation"
  homepage "https://github.com/vasilgen/instant-focus"

  depends_on macos: ">= :ventura"

  app "InstantFocus.app"

  zap trash: "~/Library/Preferences/io.github.vasilgen.InstantFocus.plist"
end
