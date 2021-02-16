cask "google-assistant" do
    version "1.0.0-rc.2"
    
    sha256 "6527804f0d55fd686dda3ef9a570f877b54bf2ad48426585bfb90ddae00438d6"
    url "https://github.com/Melvin-Abraham/Google-Assistant-Unofficial-Desktop-Client/releases/download/v#{version}/Google_Assistant-#{version}.dmg"

    name "Google Assistant Unofficial Desktop Client"
    desc "Google Assistant Unofficial Desktop Client is a cross-platform desktop client for Google Assistant based on Google Assistant SDK."
    homepage "https://github.com/Melvin-Abraham/Google-Assistant-Unofficial-Desktop-Client"
  
    app "Google Assistant.app"
  
    zap trash: [
      "~/Library/Application Support/Google Assistant",
      "~/Library/Preferences/com.redvirus.g-assist.plist",
      "~/Library/Saved Application State/com.redvirus.g-assist.savedState",
    ]
end
  