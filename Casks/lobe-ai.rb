cask "lobe-ai" do
  version "0.8.1208.4"
  sha256 "d84974d596d47ed1fe9a9a65f540bebc6c2cded5b2948c42806b4fd21028dcaa"
  url "https://lobeprod.azureedge.net/downloads/macos/Lobe.zip"
  name "Microsoft Lobe"
  desc "Easy machine learning model maker"
  homepage "https://lobe.ai/"

  auto_updates true
  
  app "Lobe.app"
  
  zap trash: [
        "~/Library/Application Support/Lobe",
        "~/Library/Preferences/com.microsoft.lobe.plist",
        "~/Library/Saved Application State/com.microsoft.lobe.savedState",
  ]
end
