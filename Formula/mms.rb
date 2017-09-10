class Mms < Formula
  desc "My mock server, mock HTTP server and proxy"
  homepage "https://github.com/LiushuiXiaoxia/MyMockServer"
  url "http://localhost:8081/deploy/mms-0.2.tar"
  sha256 "b16a571a6adb7ebaf881668e2756c2b528f160ab9f747891388832120fa4fb67"

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
