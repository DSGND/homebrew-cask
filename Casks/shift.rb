cask "shift" do
  version "7.2.6"
  sha256 "2ac2dba734e6abb5cd4fc0e5e0a2174a2eab0f2b2626cfa2372440f973fbe63c"

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  name "Shift"
  desc "Workstation to streamline your accounts, apps, and workflows"
  homepage "https://tryshift.com/"

  livecheck do
    url "https://tryshift.com/download/?platform=mac"
    regex(%r{href=.*?version/(\d+(?:[._-]\d+)+)[._-]stable/osx[._-]64}i)
  end

  app "Shift.app"
end
