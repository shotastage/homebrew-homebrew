cask "touchbar_nyancat-universal" do
  version "0.2"
  sha256 "a6ad9ed3969b6392e3cf3623ddb755a6eb881a1e3a36150b7db1878826b8d092"
  url "https://digital-nichan.com/dlcenter/macos/universal/touchbar_nyancat.zip"
  name "Touchbar Nyancat"
  desc "Stupid Nyan Cat animation on your +$2k MacBook Pro's Touchbar."
  homepage "https://github.com/avatsaev/touchbar_nyancat"
  
  app "touchbar_nyancat.app"
  
  zap trash: [
        "~/Library/Caches/com.vatsaev.touchbar-nyancat",
  ]
end
