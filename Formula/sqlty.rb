class Sqlty < Formula
  desc "Type-safe raw SQL for Python: row and parameter types from your SQL and schema"
  homepage "https://sqlty.kuncar.dev/"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@sqlty/cli-darwin-arm64/-/cli-darwin-arm64-0.8.0.tgz"
      sha256 "c5954963e3b6784c4efe03a6a76f592b2cc4cf685b77289d036570206898eb50"
    end
    on_intel do
      url "https://registry.npmjs.org/@sqlty/cli-darwin-x64/-/cli-darwin-x64-0.8.0.tgz"
      sha256 "97f693bbc13b1f99ebca914a7f622708641f31b912ef8f20877b6a97d0e51aed"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@sqlty/cli-linux-arm64/-/cli-linux-arm64-0.8.0.tgz"
      sha256 "80a1d4ba710fb4ee118af6f700995956a75fe85bbe89e7bd93046e0daf52e2a0"
    end
    on_intel do
      url "https://registry.npmjs.org/@sqlty/cli-linux-x64/-/cli-linux-x64-0.8.0.tgz"
      sha256 "89536f2342bcb723ee4ce41904ea7dc7848c4185c820604cbd4a5a4f08e4f006"
    end
  end

  def install
    bin.install "bin/sqlty"
  end

  test do
    assert_equal "sqlty #{version}\n", shell_output("#{bin}/sqlty version")
  end
end
