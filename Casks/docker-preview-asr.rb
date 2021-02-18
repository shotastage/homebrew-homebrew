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
  
    zap trash: [
    ]
end
