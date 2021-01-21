
cask "android-studio-canary" do
    version "2020.3.1.4"
    sha256 "8d92a89733d6136bc630a9a2ea43da775cd49b20c7cb1f647a12d800cc271ed3"
  
    url "https://r3---sn-oguelney.gvt1.com/edgedl/android/studio/ide-zips/#{version}/android-studio-#{version}-mac.zip"
    name "Android Studio Preview"
    desc "Tools for building Android applications"
    homepage "https://developer.android.com/studio/"
  
    auto_updates true
  
    app "Android Studio Preview.app"
  
    zap trash: [
      "~/Library/Android/sdk",
      "~/Library/Application Support/AndroidStudio#{version.major_minor}",
      "~/Library/Caches/AndroidStudio#{version.major_minor}",
      "~/Library/Logs/AndroidStudio#{version.major_minor}",
      "~/Library/Preferences/AndroidStudio#{version.major_minor}",
      "~/Library/Preferences/com.android.Emulator.plist",
      "~/Library/Preferences/com.google.android.studio.plist",
      "~/Library/Saved Application State/com.google.android.studio-EAP.savedState",
      "~/.android",
    ],
        rmdir: [
          "~/AndroidStudioProjects",
          "~/Library/Android",
        ]
end
