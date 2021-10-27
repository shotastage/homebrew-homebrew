cask "visual-studio-code-asr" do
    version "1.53.0,8490d3dde47c57ba65ec40dd192d014fd2113496"
    sha256 "c7f2f804a5dca58720b913135c41735bf5aa2c5251db82a0e97cd3dc0974a024"
    url "https://az764295.vo.msecnd.net/insider/#{version.after_comma}/VSCode-darwin-universal.zip"
    name "Microsoft Visual Studio Code"
    name "VS Code"
    desc "Open-source code editor"
    homepage "https://code.visualstudio.com/"

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
      "~/.vscode-insiders",
    ]
end
