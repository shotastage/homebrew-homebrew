cask "visual-studio-code-asr" do
    version "1.53.0,a48ef56fbf7767f55a193d7d5687addd1fc9239c"
    sha256 "933fac74a20f854ba9d261e1a67fb13da6f6f9137ad9f953780b15fbbc4b9e70"
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
