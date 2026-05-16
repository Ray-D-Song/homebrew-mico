class Mico < Formula
  desc "Migrate Docker containers between servers painlessly"
  homepage "https://github.com/Ray-D-Song/mico"
  version "0.2.2"

  on_macos do
    on_intel do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.2.2/mico_darwin_amd64"
      sha256 "88b23d1e49eb931132609cd15e7c4f0edf2e1edbdb94276c6cca77e1768bd419"
    end
    on_arm do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.2.2/mico_darwin_arm64"
      sha256 "ecc5b233e50fc17a3769684f4a0b5358deaefbea5b169b1868c07030874c3348"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.2.2/mico_linux_amd64"
      sha256 "3fd08ca1f6e178938129c7649ae48400c1780fd888e09249c72c0ba686c64e1f"
    end
    on_arm do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.2.2/mico_linux_arm64"
      sha256 "e7b3487c9b42f346a06f7d6cd078f1f2bf39b910508d84b00d4c536ed95664aa"
    end
  end

  def install
    bin.install Dir["mico_*"].first => "mico"
  end

  test do
    system "#{bin}/mico", "--help"
  end
end