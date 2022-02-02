cask "zulu-jdk17" do
    version "17.32.13,17.0.2"

    if Hardware::CPU.arm?
      # Apple Silicon binary
      sha256 "74d8e059865fdb8cfbc202bbd93a05c5a67a2d12947b09e30d637dd9b7e4011f"
      url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg"
    else
      sha256 "73d9fd535a690c1fdcc9099edbb7f9e9b8897e30573c0be95360e6896804c203"
      url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg"
    end

    name "Zulu Builds of OpenJDK"
    homepage "https://www.azul.com/downloads/zulu-community/?package=jdk"

    pkg "Double-Click to Install Azul Zulu 17.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}",
            delete:  [
              "/Library/Java/JavaVirtualMachines/zulu-#{version.major}.jdk/",
            ]

    caveats <<~EOS
      Zulu version OepnJDK Version 15 Latest for Apple Silicon ARM
    EOS
end
