cask "microsoft-edge-asr" do
    version "89.0.736.0"
    sha256 "3796dabd5ba4268b298493e250539cd671fd9a65b4ae6571a41cb98e3e5d5ad1"
  
    url "https://officecdn-microsoft-com.akamaized.net/pr/03adf619-38c6-4249-95ff-4a01c0ffc962/MacAutoupdate/MicrosoftEdgeCanary-#{version}.pkg",
        verified: "officecdn-microsoft-com.akamaized.net/"
    name "Microsoft Edge"
    desc "Multi-platform web browser"
    homepage "https://www.microsoft.com/edge"
  
    auto_updates true
    depends_on cask: "microsoft-auto-update"
  
    pkg "MicrosoftEdgeCanary-#{version}.pkg",
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
