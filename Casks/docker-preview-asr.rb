cask "docker-preview-asr" do
    version "20.10.0-desktop-M1"
    sha256 "f6d2aa88d98a13e27f95d486b9bc165582707ad2b8075104f5d50959a5e19ddd"
   
    url "https://desktop.docker.com/mac/m1preview/Docker-AppleSilicon-Preview7.dmg"

    name "Docker Desktop"
    name "Docker Community Edition"
    name "Docker CE"
    desc "App to build and share containerized applications and microservices"
    homepage "https://www.docker.com/products/docker-desktop"
  
    depends_on macos: ">= :arm64_big_sur"

    auto_updates true
  
    app "Docker.app"
  
    zap trash: [
    ]
end
