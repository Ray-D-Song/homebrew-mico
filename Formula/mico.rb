class Mico < Formula
  desc "Migrate Docker containers between servers painlessly"
  homepage "https://github.com/Ray-D-Song/mico"
  version "0.1.1"

  on_macos do
    on_intel do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.1.1/mico_darwin_amd64"
      sha256 "2f6177b4cd72ab4e2a2e9096cdcb3c4a042673b40c6b3b82eba8e5978ea81c8a"
    end
    on_arm do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.1.1/mico_darwin_arm64"
      sha256 "b9afa226452d3a0bd29be4ae5eeec377e7165bf33a6e6410c83b1bfa2e1ac9db"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.1.1/mico_linux_amd64"
      sha256 "4a168847fa86fa2a551b17e77219a3b740d32cb6dc6c75d772d666c382ad27aa"
    end
    on_arm do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.1.1/mico_linux_arm64"
      sha256 "9b5ac1037ae4a153cde1ab48b948762a52a4a8ea92def686b8b0e84474f3d2f6"
    end
  end

  def install
    bin.install Dir["mico_*"].first => "mico"
  end

  test do
    system "#{bin}/mico", "--help"
  end
end