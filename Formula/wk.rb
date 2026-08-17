class Wk < Formula
  desc "Manage WorkerKit AI workers and browse the kit directory"
  homepage "https://workerkit.ai"
  url "https://registry.npmjs.org/@workerkit/cli/-/cli-0.1.0.tgz"
  sha256 "256272a7ba3c12f530a7ec8e5af12dbce945225107280c307774d09e2c6846eb"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wk --version")

    # Offline smoke: with no credential in this sandbox's HOME, an authenticated
    # command must refuse cleanly with exit 3 and say how to recover, rather than
    # reaching the network or crashing.
    output = shell_output("#{bin}/wk workers list 2>&1", 3)
    assert_match "wk auth login", output
  end
end
