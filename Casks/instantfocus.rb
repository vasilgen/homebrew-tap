cask "instantfocus" do
  version "0.1.3"
  sha256 "d0401168f4805f272d32de375b73e7f41db215a627057009f0a3e3fc250ce662"

  url "https://github.com/vasilgen/instant-focus/releases/download/v#{version}/InstantFocus-#{version}.zip"
  name "InstantFocus"
  desc "Jump to any app with one shortcut, on any Space, without the animation"
  homepage "https://github.com/vasilgen/instant-focus"

  depends_on macos: :ventura

  app "InstantFocus.app"

  uninstall quit: "io.github.vasilgen.InstantFocus"

  zap trash: "~/Library/Preferences/io.github.vasilgen.InstantFocus.plist"
end
