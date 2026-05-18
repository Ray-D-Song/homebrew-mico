class Mico < Formula
  desc "Migrate Docker containers between servers painlessly"
  homepage "https://github.com/Ray-D-Song/mico"
  version "0.2.4"

  on_macos do
    on_intel do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.2.4/mico_darwin_amd64"
      sha256 "394316b396ee9da9b12eac61919a0ea39433eaae4ddef1ef07e5b33b58403a75"
    end
    on_arm do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.2.4/mico_darwin_arm64"
      sha256 "d31d3ee67dcda7d011927db6d778c9bc55ddd741a694d9214166e201c73b986b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.2.4/mico_linux_amd64"
      sha256 "764bb02a6975e36d3c568638f082f854b0fdcc023bcaca7e49f39a33c4e3293f"
    end
    on_arm do
      url "https://github.com/Ray-D-Song/mico/releases/download/v0.2.4/mico_linux_arm64"
      sha256 "7a25eb111de63dbb2ec24ad486e13bbae6677587fca8033d7368beae1a6f5158"
    end
  end

  def install
    bin.install Dir["mico_*"].first => "mico"
  end

  test do
    system "#{bin}/mico", "--help"
  end
end