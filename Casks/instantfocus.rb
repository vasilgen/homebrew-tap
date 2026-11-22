cask "instantfocus" do
  version "0.1.4"
  sha256 "760eee39d1ec5510128edc763311cdc8271cb1f8d4a189c8dda02f6df06e739a"

  url "https://github.com/vasilgen/instant-focus/releases/download/v#{version}/InstantFocus-#{version}.zip"
  name "InstantFocus"
  desc "Jump to any app with one shortcut, on any Space, without the animation"
  homepage "https://github.com/vasilgen/instant-focus"

  depends_on macos: :ventura

  app "InstantFocus.app"

  uninstall quit: "io.github.vasilgen.InstantFocus"

  zap trash: "~/Library/Preferences/io.github.vasilgen.InstantFocus.plist"
end
