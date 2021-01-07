cask "touchbarspaceflight-universal" do
  version "0.2"
  sha256 "60cae8a0479ee460531e997480e1affd661b27f6f75e9f1e5448e896dd00e55e"
  url "https://digital-nichan.com/dlcenter/macos/universal/TouchBarSpaceFight.zip"
  name "Touch Bar Space Fight"
  desc "A simple, fun game for the MacBook Pro's Touch Bar."
  homepage "https://github.com/insidegui/TouchBarSpaceFight"
  
  app "TouchBarSpaceFight.app"
  
  zap trash: [
  ]
end
