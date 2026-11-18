class Sqlty < Formula
  desc "Type-safe raw SQL for Python: row and parameter types from your SQL and schema"
  homepage "https://sqlty.kuncar.dev/"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@sqlty/cli-darwin-arm64/-/cli-darwin-arm64-0.7.1.tgz"
      sha256 "5105c3b988f79a5f5c467a46ed2285624e85ea7a1e34a3651b3cf6edd629f977"
    end
    on_intel do
      url "https://registry.npmjs.org/@sqlty/cli-darwin-x64/-/cli-darwin-x64-0.7.1.tgz"
      sha256 "78fac4a836bb7b81e4cc628f2665c21c911100a71ea501bccda7a2dd372b5078"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@sqlty/cli-linux-arm64/-/cli-linux-arm64-0.7.1.tgz"
      sha256 "7043bfb83c52463b87994677116aeb04e302e11f31f71eb359b8c322385e6450"
    end
    on_intel do
      url "https://registry.npmjs.org/@sqlty/cli-linux-x64/-/cli-linux-x64-0.7.1.tgz"
      sha256 "7ea5b8cfbfa29de35720b732129b2be2178222cf95affa84457a4b47703afc25"
    end
  end

  def install
    bin.install "bin/sqlty"
  end

  test do
    assert_equal "sqlty #{version}\n", shell_output("#{bin}/sqlty version")
  end
end
