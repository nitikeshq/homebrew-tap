class Adrenai < Formula
  desc "Repository-aware configuration for AI coding agents"
  homepage "https://nitikeshq.github.io/adrenai/"
  url "https://github.com/nitikeshq/adrenai/releases/download/v1.0.1/adrenai-1.0.1.tgz"
  version "1.0.1"
  sha256 "86643a9083f25088a5641e2cdcaab59989665499a0ea4dcf4e22d2fe0ff91d4a"
  license "Apache-2.0"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adrenai --version")
  end
end
