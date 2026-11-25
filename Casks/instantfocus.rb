cask "instantfocus" do
  version "0.1.5"
  sha256 "3437da550c7a4cc1f63fd34123d5676aba8e966556ff31bfac1ac2ec99653dcd"

  url "https://github.com/vasilgen/instant-focus/releases/download/v#{version}/InstantFocus-#{version}.zip"
  name "InstantFocus"
  desc "Jump to any app with one shortcut, on any Space, without the animation"
  homepage "https://github.com/vasilgen/instant-focus"

  depends_on macos: :ventura

  app "InstantFocus.app"

  uninstall quit: "io.github.vasilgen.InstantFocus"

  zap trash: "~/Library/Preferences/io.github.vasilgen.InstantFocus.plist"
end
