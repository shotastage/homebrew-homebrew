cask "drawio-universal" do
    version "14.1.8"
  
    if Hardware::CPU.arm?
      # Apple Silicon binary
      sha256 "6aac98ef0d606d06fcfe50298e5bc519c5385b30b1f32c46c7b431a096564d7e"
      url "https://github-releases.githubusercontent.com/92443980/72da8700-4ddc-11eb-8d79-7c1d31f5e525?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20210216%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210216T000500Z&X-Amz-Expires=300&X-Amz-Signature=f185aae5f57bebbc38e9216c8f45a55ee4d57bc2ba08ad7ea26e2c5003674cf2&X-Amz-SignedHeaders=host&actor_id=3389538&key_id=0&repo_id=92443980&response-content-disposition=attachment%3B%20filename%3Ddraw.io-arm64-#{version}.dmg&response-content-type=application%2Foctet-stream",
        verified: "github.com/jgraph/drawio-desktop/"
    else
      # Intel version binary
      sha256 "440760565c725659918ba4d7dd82939930d3b4e8f372abe1cc008e352b1da4d1"
      url "https://github-releases.githubusercontent.com/92443980/fb0c5c80-4ddb-11eb-8364-dcc9093a1b1b?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20210216%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210216T000459Z&X-Amz-Expires=300&X-Amz-Signature=b953ca391d505e653d356c5187f8567b8007238638b79e3c6f4ac3aa22db359e&X-Amz-SignedHeaders=host&actor_id=3389538&key_id=0&repo_id=92443980&response-content-disposition=attachment%3B%20filename%3Ddraw.io-#{version}.dmg&response-content-type=application%2Foctet-stream",
        verified: "github.com/jgraph/drawio-desktop/"
    end

    appcast "https://github.com/jgraph/drawio-desktop/releases.atom"
    name "draw.io Desktop"
    desc "Draw.io is free online diagram software"
    homepage "https://www.draw.io/"
  
    app "draw.io.app"
  
    zap trash: [
      "~/Library/Application Support/draw.io",
      "~/Library/Caches/com.jgraph.drawio.desktop",
      "~/Library/Logs/draw.io",
      "~/Library/Preferences/com.jgraph.drawio.desktop.helper.plist",
      "~/Library/Preferences/com.jgraph.drawio.desktop.plist",
      "~/Library/Saved Application State/com.jgraph.drawio.desktop.savedState",
      "~/Library/WebKit/com.jgraph.drawio.desktop",
    ]
end
  