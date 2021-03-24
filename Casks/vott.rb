cask "vott" do
    version "2.0.0"
  
    
    sha256 "df59aa7b704bc42d4a766e81cdd8d9b66d16574570b64afbb580996a63fc39ca"
    url "https://github-releases.githubusercontent.com/77614310/1f255980-a4ec-11ea-867f-9055dfd61b9b?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20210324%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210324T095034Z&X-Amz-Expires=300&X-Amz-Signature=e4ef8371e4470098a3843727259f75bfaf46ebe8f8e3db2bf42766c117660635&X-Amz-SignedHeaders=host&actor_id=3389538&key_id=0&repo_id=77614310&response-content-disposition=attachment%3B%20filename%3Dvott-2.2.0-darwin.dmg&response-content-type=application%2Foctet-stream",
      verified: "github.com/microsoft/VoTT/"

    name "VoTT (Visual Object Tagging Tool)"
    desc "An open source annotation and labeling tool for image and video assets."
    homepage "https://github.com/Microsoft/VoTT"
  
    app "vott.app"
  
    zap trash: [
    ]
end
  