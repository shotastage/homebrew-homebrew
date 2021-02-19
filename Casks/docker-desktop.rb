cask "docker-desktop" do
   
    if Hardware::CPU.arm?
        # Apple Silicon binary
        version "20.10.3.preview2"
        sha256 "54377522f624ca4cd42a70dc64796de86749bcbf129f31e624806a27466b030e"
        url "https://desktop.docker.com/mac/stable/arm64/60984/Docker.dmg"
    else
        # Intel version binary
        version "18.06.1-ce-mac73,26764"
        sha256 "3429eac38cf0d198039ad6e1adce0016f642cdb914a34c67ce40f069cdb047a5"
        url "https://desktop.docker.com/mac/stable/#{version.after_comma}/Docker.dmg"
        auto_updates true
    end

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