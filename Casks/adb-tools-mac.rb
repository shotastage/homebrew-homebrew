cask "adb-tools-mac" do
    version "1.1"
    sha256 "712290d66504b3d8ac7a465b113e979006b3cb314a4b1c1fe626f7dba1af5be5"
  
    url "https://github.com/naman14/adb-tools-mac/releases/download/V1.1/adbconnect.app.zip"

    name "adb connect mac"
    desc "adb-tools-mac is a macOS menu bar app written in SwiftUI for common adb tools."
    homepage "https://github.com/naman14/adb-tools-mac"

    depends_on macos: ">= :arm64_big_sur"

    app "adbconnect.app"
end
