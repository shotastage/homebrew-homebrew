cask "jupyter-desktop" do
    version "4.0.5,1"

    if Hardware::CPU.arm?
      # Apple Silicon binary
      sha256 "684f891e1eb54a435b6bb826d033502bd4500256352b76ec07216c4992f39165"
      url "https://github.com/jupyterlab/jupyterlab-desktop/releases/download/v#{version.before_comma}-#{version.after_comma}/JupyterLab-Setup-macOS-arm64.dmg"
    else
      sha256 "4af67926454d197be45cac8593ae7886783409bd07e56f320c8c1f2a167986b4"
      url "https://github.com/jupyterlab/jupyterlab-desktop/releases/download/v#{version.before_comma}-#{version.after_comma}/JupyterLab-Setup-macOS-x64.dmg"
    end

    name "Jupyter Desktop"
    desc "JupyterLab Desktop is the cross-platform desktop application for JupyterLab."
    homepage "https://github.com/jupyterlab/jupyterlab-desktop"

    livecheck do
      url :url
      strategy :extract_plist do |versions|
        versions.values.map(&:short_version).compact.first
      end
    end

    depends_on macos: ">= :ventura"
    app "JupyterLab.app"
end
