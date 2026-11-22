cask "instantfocus" do
  version "0.1.2"
  sha256 "4a8466344adb34ae9e3fb59bd36da1ae92e1803f3bed6e36397284ed8568b602"

  url "https://github.com/vasilgen/instant-focus/releases/download/v#{version}/InstantFocus-#{version}.zip"
  name "InstantFocus"
  desc "Jump to any app with one shortcut, on any Space, without the animation"
  homepage "https://github.com/vasilgen/instant-focus"

  depends_on macos: :ventura

  app "InstantFocus.app"

  uninstall quit: "io.github.vasilgen.InstantFocus"

  zap trash: "~/Library/Preferences/io.github.vasilgen.InstantFocus.plist"
end
