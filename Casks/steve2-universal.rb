cask "steve2-universal" do
  version "0.85"
  sha256 "4ae85f660d6d02da74ce9390d6a22c6ccbedb7790f612542bde3a1c1332b434e"
  url "https://digital-nichan.com/dlcenter/macos/universal/Steve2.zip"
  name "Steve2"
  desc "Steve ][ - Speedy Apple ][ Emulator"
  homepage "https://github.com/trudnai/Steve2"
  
  app "Steve ][.app"
  
  zap trash: [
    "~/Library/Application Scripts/com.digital-nichan.com.trudnai.steveii",
    "~/Library/Containers/com.digital-nichan.com.trudnai.steveii",
  ]
end
