cask "slack-asr" do
    version "4.12.0"
    sha256 "d4f0fac98143c3f2db1a6883f3221c65deab704b9a13543de8fc5bf771b6c8ae"

    url "https://downloads.slack-edge.com/releases/macos/#{version}/prod/arm64/Slack-#{version}-macOS.dmg",
        verified: "downloads.slack-edge.com/"
    appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://slack.com/ssb/download-osx"
    name "Slack"
    desc "Team communication and collaboration software"
    homepage "https://slack.com/"

    auto_updates true
    conflicts_with cask: "homebrew/cask-versions/slack-beta"

    app "Slack.app"

    uninstall quit: "com.tinyspeck.slackmacgap"

    zap trash: [
      "~/Library/Application Scripts/com.tinyspeck.slackmacgap",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tinyspeck.slackmacgap.sfl*",
      "~/Library/Application Support/Slack",
      "~/Library/Caches/com.tinyspeck.slackmacgap",
      "~/Library/Caches/com.tinyspeck.slackmacgap.ShipIt",
      "~/Library/Containers/com.tinyspeck.slackmacgap",
      "~/Library/Containers/com.tinyspeck.slackmacgap.SlackCallsService",
      "~/Library/Cookies/com.tinyspeck.slackmacgap.binarycookies",
      "~/Library/Group Containers/*.com.tinyspeck.slackmacgap",
      "~/Library/Group Containers/*.slack",
      "~/Library/Logs/Slack",
      "~/Library/Preferences/ByHost/com.tinyspeck.slackmacgap.ShipIt.*.plist",
      "~/Library/Preferences/com.tinyspeck.slackmacgap.helper.plist",
      "~/Library/Preferences/com.tinyspeck.slackmacgap.plist",
      "~/Library/Saved Application State/com.tinyspeck.slackmacgap.savedState",
      "~/Library/WebKit/com.tinyspeck.slackmacgap",
    ]
end
