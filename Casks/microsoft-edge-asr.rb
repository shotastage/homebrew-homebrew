cask "microsoft-edge-asr" do
    version "89.0.752.1"
    sha256 "31a07c5d181ee48aa8f271bdbe6e24bd447ad56bb3c1c17d486c0adcf8e09fd2"
  
    url "https://officecdn-microsoft-com.akamaized.net/pr/03adf619-38c6-4249-95ff-4a01c0ffc962/MacAutoupdate/MicrosoftEdgeDev-#{version}.pkg?platform=Mac&Consent=1&channel=Dev",
        verified: "officecdn-microsoft-com.akamaized.net/"
    name "Microsoft Edge"
    desc "Multi-platform web browser"
    homepage "https://www.microsoft.com/edge"
  
    auto_updates true
    depends_on macos: ">= :arm64_big_sur", cask: "microsoft-auto-update"

    pkg "MicrosoftEdgeDev-#{version}.pkg",
        choices: [
          {
            "choiceIdentifier" => "com.microsoft.package.Microsoft_AutoUpdate.app", # Office16_all_autoupdate.pkg
            "choiceAttribute"  => "selected",
            "attributeSetting" => 0,
          },
        ]
  
    uninstall pkgutil: "com.microsoft.edgemac"
  
    zap trash: [
      "~/Library/Application Support/Microsoft Edge",
      "~/Library/Caches/Microsoft Edge",
      "~/Library/Preferences/com.microsoft.edgemac.plist",
      "~/Library/Saved Application State/com.microsoft.edgemac.savedState",
    ],
        rmdir: "/Library/Application Support/Microsoft"
end
