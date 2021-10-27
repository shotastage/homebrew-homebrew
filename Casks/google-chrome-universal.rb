cask "google-chrome-universal" do
    version "88.0.4324.96"
    sha256 :no_check

    if Hardware::CPU.arm?
        # Apple Silicon binary
        url "https://dl.google.com/chrome/mac/universal/stable/CHFA/googlechrome.dmg"
    else
        # Intel version binary
        url "https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg"
    end

    name "Google Chrome"
    desc "Web browser"
    homepage "https://www.google.com/chrome/"

    auto_updates true

    app "Google Chrome.app"

    zap trash:     [
        "/Library/Caches/com.google.SoftwareUpdate.*",
        "/Library/Google/Google Chrome Brand.plist",
        "/Library/Google/GoogleSoftwareUpdate",
        "~/Library/Application Support/Google/Chrome",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.chrome.app.*.sfl*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.chrome.sfl*",
        "~/Library/Caches/Google/Chrome",
        "~/Library/Caches/com.google.Chrome",
        "~/Library/Caches/com.google.Chrome.helper.*",
        "~/Library/Caches/com.google.Keystone",
        "~/Library/Caches/com.google.Keystone.Agent",
        "~/Library/Caches/com.google.SoftwareUpdate",
        "~/Library/Google/Google Chrome Brand.plist",
        "~/Library/Google/GoogleSoftwareUpdate",
        "~/Library/LaunchAgents/com.google.keystone.agent.plist",
        "~/Library/Logs/GoogleSoftwareUpdateAgent.log",
        "~/Library/Preferences/com.google.Chrome.plist",
        "~/Library/Preferences/com.google.Keystone.Agent.plist",
        "~/Library/Saved Application State/com.google.Chrome.app.*.savedState",
        "~/Library/Saved Application State/com.google.Chrome.savedState",
        "~/Library/WebKit/com.google.Chrome",
    ],
    rmdir:     [
        "/Library/Google",
        "~/Library/Application Support/Google",
        "~/Library/Caches/Google",
        "~/Library/Google",
    ],
    launchctl: [
        "com.google.keystone.agent",
        "com.google.keystone.daemon",
    ]

    caveats <<~EOS
      Google Chrome for macOS
      This cask will install adapted binary depending on your CPU architecture
      different from the official cask repository.
    EOS
end
