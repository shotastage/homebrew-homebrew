cask "zulu-jdk19" do
    version "19.32.13,19.0.2"

    if Hardware::CPU.arm?
      # Apple Silicon binary
      sha256 "12f7ae5c2734962255ca0bb47ce71c0bae34720e6af1f84377250ff074bd907a"
      url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg"
    else
      sha256 "44a4fad67f32f7e7a886ffce0d7d523de30b552e8e81c1e25af5c2fdef762f66"
      url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg"
    end

    name "Zulu Builds of OpenJDK"
    homepage "https://www.azul.com/downloads/zulu-community/?package=jdk"

    pkg "Double-Click to Install Azul Zulu JDK 19.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}",
            delete:  [
              "/Library/Java/JavaVirtualMachines/zulu-#{version.major}.jdk/",
            ]

    caveats <<~EOS
      Zulu version OepnJDK Version 19 Latest for Apple Silicon ARM
    EOS
end
