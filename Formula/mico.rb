class Mico < Formula
  desc "Migrate Docker containers between servers painlessly"
  homepage "https://github.com/Ray-D-Song/mico"
  version "0.2.0"

  on_macos do
    on_intel do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.2.0/mico_darwin_amd64"
      sha256 "41ee6de27c475ad1d527713b3dfbebfc5dae4b37aa52c9e8d47ce2baa9b5490c"
    end
    on_arm do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.2.0/mico_darwin_arm64"
      sha256 "b8885ead811d8d63c8f4bf93f98283b1dab2df461de67d6d0f67687c4b76bd7d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.2.0/mico_linux_amd64"
      sha256 "35bf491f283ff560e106d945fe44fde36f9f69c971c5a894d1d53dd32b337b58"
    end
    on_arm do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.2.0/mico_linux_arm64"
      sha256 "c285a3bfc90bc97f8f5b965f581797a9f14912ce69c0f0f860c64a97538f8436"
    end
  end

  def install
    bin.install Dir["mico_*"].first => "mico"
  end

  test do
    system "#{bin}/mico", "--help"
  end
end