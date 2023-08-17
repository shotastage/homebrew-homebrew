cask "lobe-ai" do
  version "0.8.1208.5"
  sha256 "40f229ef611db20e2b2c00dd9320a3d374f132240d0862ac66551e087ea62717"
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
