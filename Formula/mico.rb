class Mico < Formula
  desc "Migrate Docker containers between servers painlessly"
  homepage "https://github.com/Ray-D-Song/mico"
  version "0.0.0"

  on_macos do
    on_intel do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.0.0/mico_darwin_amd64"
      sha256 "PLACEHOLDER"
    end
    on_arm do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.0.0/mico_darwin_arm64"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.0.0/mico_linux_amd64"
      sha256 "PLACEHOLDER"
    end
    on_arm do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.0.0/mico_linux_arm64"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "mico"
  end

  test do
    system "#{bin}/mico", "--help"
  end
end