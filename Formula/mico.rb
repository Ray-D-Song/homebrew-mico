class Mico < Formula
  desc "Migrate Docker containers between servers painlessly"
  homepage "https://github.com/Ray-D-Song/mico"
  version "0.1.2"

  on_macos do
    on_intel do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.1.2/mico_darwin_amd64"
      sha256 "a4c1da16e1106b38baeb95600260d52c48ff6177419a62a3519379cd02c00202"
    end
    on_arm do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.1.2/mico_darwin_arm64"
      sha256 "5a773d12dfced6f75617561d4250190f1d5004e1cfcd0d794a8b19f9058e4b31"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.1.2/mico_linux_amd64"
      sha256 "def0a9fd5ac5e4a4067de8f5eab7f26acc8db7daf81cd9ac94c9be2133bc1dc3"
    end
    on_arm do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.1.2/mico_linux_arm64"
      sha256 "dc6c594be947dc9d4c9d018c9e8bfc6cdc8dbf228b55898e40979c80e961bfe7"
    end
  end

  def install
    bin.install Dir["mico_*"].first => "mico"
  end

  test do
    system "#{bin}/mico", "--help"
  end
end