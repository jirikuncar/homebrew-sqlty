class Sqlty < Formula
  desc "Type-safe raw SQL for Python: row and parameter types from your SQL and schema"
  homepage "https://sqlty.kuncar.dev/"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jirikuncar/sqlty/releases/download/v0.7.0/sqlty-aarch64-apple-darwin.tar.gz"
      sha256 "5e7c08c22bc7ee9f732770808558bb4ee56de42164ea33037f86b8c8ff71edd0"
    end
    on_intel do
      url "https://github.com/jirikuncar/sqlty/releases/download/v0.7.0/sqlty-x86_64-apple-darwin.tar.gz"
      sha256 "cbb1ca3df9aba1558ba515d65bb6d240a1361cc91bdc3ac86ce9b7f2f0e5ae37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jirikuncar/sqlty/releases/download/v0.7.0/sqlty-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fb9423be602914df7d0d6659bd872dd750bb539ac0df3b40fee970b483a1471a"
    end
    on_intel do
      url "https://github.com/jirikuncar/sqlty/releases/download/v0.7.0/sqlty-x86_64-unknown-linux-musl.tar.gz"
      sha256 "744a567419c5115f34f1526b00249cd97268f0ceab2d5d67fe8eadf9b8ed7170"
    end
  end

  def install
    bin.install "sqlty"
  end

  test do
    assert_equal "sqlty #{version}\n", shell_output("#{bin}/sqlty version")
  end
end
