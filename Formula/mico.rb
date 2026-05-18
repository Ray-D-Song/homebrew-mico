class Mico < Formula
  desc "Migrate Docker containers between servers painlessly"
  homepage "https://github.com/Ray-D-Song/mico"
  version "0.2.3"

  on_macos do
    on_intel do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.2.3/mico_darwin_amd64"
      sha256 "428bec0988a00d67757fcbb02d414a428af582946e5a80618f3d271a88457ef0"
    end
    on_arm do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.2.3/mico_darwin_arm64"
      sha256 "63c64ecbefdb2846da1fdb936417cf8cdb36c156d7689ee4ca1a441758fb2d60"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.2.3/mico_linux_amd64"
      sha256 "c131afbe66093cbd94802f06041882d99dec258bcafcb61581a30057ee6c3a9c"
    end
    on_arm do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.2.3/mico_linux_arm64"
      sha256 "aa628a4b8399ca6903ffba713de99a8edd527067c73ecea44e4c80855824a3a9"
    end
  end

  def install
    bin.install Dir["mico_*"].first => "mico"
  end

  test do
    system "#{bin}/mico", "--help"
  end
end