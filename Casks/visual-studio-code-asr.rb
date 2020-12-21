cask "visual-studio-code-asr" do
    version "1.53.0,4a875e23d20b64504a818834f3fa4c40adb8d480"
    sha256 "924f29741ef119cf954513c00a1e1b0d99ed354bda417ad698769c42abe9666f"
    url "https://az764295.vo.msecnd.net/insider/#{version.after_comma}/VSCode-darwin-arm64.zip"
    name "Microsoft Visual Studio Code"
    name "VS Code"
    desc "Open-source code editor"
    homepage "https://code.visualstudio.com/"
  
    depends_on macos: ">= :arm64_big_sur"

    auto_updates true
    conflicts_with cask: "visual-studio-code"

    app "Visual Studio Code - Insiders.app"
    binary "#{appdir}/Visual Studio Code - Insiders.app/Contents/Resources/app/bin/code", target: "code-insiders"

    zap trash: [
      "~/Library/Application Support/Code - Insiders",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.vscode.sfl*",
      "~/Library/Caches/Code - Insiders",
      "~/Library/Caches/com.microsoft.VSCodeInsiders",
      "~/Library/Caches/com.microsoft.VSCodeInsiders.ShipIt",
      "~/Library/Preferences/ByHost/com.microsoft.VSCode.ShipIt.*.plist",
      "~/Library/Preferences/com.microsoft.VSCodeInsiders.helper.plist",
      "~/Library/Preferences/com.microsoft.VSCodeInsiders.plist",
      "~/Library/Saved Application State/com.microsoft.VSCode.savedState",
      "~/.vscode",
    ]
end
