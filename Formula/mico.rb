class Mico < Formula
  desc "Migrate Docker containers between servers painlessly"
  homepage "https://github.com/Ray-D-Song/mico"
  version "0.1.3"

  on_macos do
    on_intel do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.1.3/mico_darwin_amd64"
      sha256 "0af7ddf5c958fb12855ff51bc271017826e74c1e59efacd0fa1fb84e939df577"
    end
    on_arm do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.1.3/mico_darwin_arm64"
      sha256 "e8f136b8916317cf133b40c3bf1b8de5fd8a408f1b055b59cd5a5d6ca7e9313a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.1.3/mico_linux_amd64"
      sha256 "edd7ad1abe085eb85fa2e124e73da05b9a40e181bca0703d5809e2b383e82766"
    end
    on_arm do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.1.3/mico_linux_arm64"
      sha256 "59c1ce059e454f3d8dff385761be6bf3521840b0a064cc2fb2485a5fc95c492d"
    end
  end

  def install
    bin.install Dir["mico_*"].first => "mico"
  end

  test do
    system "#{bin}/mico", "--help"
  end
end