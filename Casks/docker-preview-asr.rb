cask "docker-preview-asr" do
    version "20.10.0-desktop-M1.preview2"
    sha256 "54377522f624ca4cd42a70dc64796de86749bcbf129f31e624806a27466b030e"
   
    url "https://desktop.docker.com/mac/stable/arm64/60984/Docker.dmg"

    name "Docker Desktop"
    name "Docker Community Edition"
    name "Docker CE"
    desc "App to build and share containerized applications and microservices"
    homepage "https://www.docker.com/products/docker-desktop"
  
    depends_on macos: ">= :arm64_big_sur"

    auto_updates true
  
    app "Docker.app"
  
    uninstall delete:    [
        "/Library/PrivilegedHelperTools/com.docker.vmnetd",
        "/private/var/tmp/com.docker.vmnetd.socket",
        "/usr/local/bin/docker",
        "/usr/local/bin/docker-compose",
        "/usr/local/bin/docker-credential-desktop",
        "/usr/local/bin/docker-credential-ecr-login",
        "/usr/local/bin/docker-credential-osxkeychain",
        "/usr/local/bin/hyperkit",
        "/usr/local/bin/kubectl",
        "/usr/local/bin/kubectl.docker",
        "/usr/local/bin/notary",
        "/usr/local/bin/vpnkit",
    ],
            launchctl: [
              "com.docker.helper",
              "com.docker.vmnetd",
            ],
            quit:      "com.docker.docker"

  zap trash: [
    "/usr/local/bin/docker-compose.backup",
    "/usr/local/bin/docker.backup",
    "~/Library/Application Support/Docker Desktop",
    "~/Library/Application Scripts/com.docker.helper",
    "~/Library/Caches/KSCrashReports/Docker",
    "~/Library/Caches/com.docker.docker",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.docker.docker",
    "~/Library/Containers/com.docker.docker",
    "~/Library/Containers/com.docker.helper",
    "~/Library/Group Containers/group.com.docker",
    "~/Library/Preferences/com.docker.docker.plist",
    "~/Library/Preferences/com.electron.docker-frontend.plist",
    "~/Library/Saved Application State/com.electron.docker-frontend.savedState",
    "~/Library/Logs/Docker Desktop",
  ],
      rmdir: [
        "~/Library/Caches/KSCrashReports",
        "~/Library/Caches/com.plausiblelabs.crashreporter.data",
      ]
end
