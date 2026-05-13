class Mico < Formula
  desc "Migrate Docker containers between servers painlessly"
  homepage "https://github.com/Ray-D-Song/mico"
  version "0.2.1"

  on_macos do
    on_intel do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.2.1/mico_darwin_amd64"
      sha256 "145371e31da3f334c1bfaeed960c8042acafc6048e74d630f593602a083b446a"
    end
    on_arm do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.2.1/mico_darwin_arm64"
      sha256 "c5d820705a2e539b31f17a3b7413087a45f1cb734a44347b5e22da35400bc4a5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.2.1/mico_linux_amd64"
      sha256 "2bb86dba5faccf3fd5c72884ee33aef0ee48650f8a6289afc886e3fd4d060164"
    end
    on_arm do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.2.1/mico_linux_arm64"
      sha256 "1e5fb48c45cb29e2421a5dfbf583994a35a06cfe690d5dbebfe46774f97bb304"
    end
  end

  def install
    bin.install Dir["mico_*"].first => "mico"
  end

  test do
    system "#{bin}/mico", "--help"
  end
end