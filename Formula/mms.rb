class Mms < Formula
  desc "My mock server, mock HTTP server and proxy"
  homepage "https://github.com/LiushuiXiaoxia/MyMockServer"
  url "https://github.com/LiushuiXiaoxia/MyMockServer/raw/master/deploy/mms-0.1.tar"
  sha256 "5725cf7be10feda3e74890ecc45fde7198d28453fb333463e9a5b52db69d24a2"

  bottle :unneeded
  depends_on :java => "1.6+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/MyMockServer" => "mms"

    lib.install_symlink "#{libexec}/lib" => "mms"
  end

  test do
    File.exist? "#{bin}/mms"
  end
end
