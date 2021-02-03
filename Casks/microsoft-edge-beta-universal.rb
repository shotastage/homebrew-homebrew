cask "microsoft-edge-beta-universal" do
    version "88.0.705.49"
    sha256 "1d414292e5cebf8133c3190eb10c440fece90e197a8a5c832c32e839f0cc2b4e"
  
    url "https://officecdn-microsoft-com.akamaized.net/pr/03adf619-38c6-4249-95ff-4a01c0ffc962/MacAutoupdate/MicrosoftEdgeBeta-#{version}.pkg?platform=Mac&Consent=1&channel=Beta",
        verified: "officecdn-microsoft-com.akamaized.net/"
    name "Microsoft Edge"
    desc "Multi-platform web browser"
    homepage "https://www.microsoft.com/edge"
  
    auto_updates true
    depends_on macos: ">= :arm64_big_sur", cask: "microsoft-auto-update"

    pkg "MicrosoftEdgeBeta-#{version}.pkg",
        choices: [
          {
            "choiceIdentifier" => "com.microsoft.package.Microsoft_AutoUpdate.app", # Office16_all_autoupdate.pkg
            "choiceAttribute"  => "selected",
            "attributeSetting" => 0,
          },
        ]
  
    uninstall pkgutil: "com.microsoft.edgemac.Beta"
  
    zap trash: [
      "~/Library/Application Support/Microsoft Edge Beta",
      "~/Library/Caches/Microsoft Edge Beta",
      "~/Library/Preferences/com.microsoft.edgemac.Beta.plist",
      "~/Library/Saved Application State/com.microsoft.edgemac.Beta.savedState",
    ],
    rmdir: "/Library/Application Support/Microsoft"
end
