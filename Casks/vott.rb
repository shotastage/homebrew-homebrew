cask "vott" do
    version "2.0.0"
  
    
    sha256 "df59aa7b704bc42d4a766e81cdd8d9b66d16574570b64afbb580996a63fc39ca"
    url "https://github.com/microsoft/VoTT/releases/download/v2.2.0/vott-2.2.0-darwin.dmg",
      verified: "github.com/microsoft/VoTT/"

    name "VoTT (Visual Object Tagging Tool)"
    desc "An open source annotation and labeling tool for image and video assets."
    homepage "https://github.com/Microsoft/VoTT"
  
    app "vott.app"
  
    zap trash: [
    ]
end
  