cask "microsoft-edge-universal" do
  version "88.0.705.56"
  sha256 :no_check

  if Hardware::CPU.arm?
      # Apple Silicon binary
      url "https://officecdn-microsoft-com.akamaized.net/pr/03adf619-38c6-4249-95ff-4a01c0ffc962/MacAutoupdate/MicrosoftEdge-#{version}.pkg?platform=Mac&Consent=1&channel=Stable",
      verified: "officecdn-microsoft-com.akamaized.net/"
  else
      # Intel version binary
      url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/MicrosoftEdge-#{version}.pkg?platform=Mac&Consent=1&channel=Stable",
      verified: "officecdn-microsoft-com.akamaized.net/"
  end

  name "Microsoft Edge"
  desc "Multi-platform web browser"
  homepage "https://www.microsoft.com/edge"

  auto_updates true
  cask: "microsoft-auto-update"

  pkg "MicrosoftEdge-#{version}.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.package.Microsoft_AutoUpdate.app", # Office16_all_autoupdate.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall pkgutil: "com.microsoft.edgemac"

  zap trash: [
    "/Applications/Microsoft Edge.app",
    "~/Library/Application Support/Microsoft Edge",
    "~/Library/Caches/Microsoft Edge",
    "~/Library/Preferences/com.microsoft.edgemac.plist",
    "~/Library/Saved Application State/com.microsoft.edgemac.savedState",
  ],
  rmdir: "/Library/Application Support/Microsoft"
end
