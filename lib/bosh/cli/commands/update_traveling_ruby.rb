module Bosh::Cli::Command
  class UpdateTravelingRuby < Base
    # for the #sh helper
    require "rake"
    require "rake/file_utils"
    include FileUtils

    usage "update cli"
    desc  "Updates BOSH CLI via traveling-ruby installer"
    def update_cli

      sh "curl -k -s https://raw.githubusercontent.com/cloudfoundry-community/bosh_cli_install/master/binscripts/installer | bash"
    end
  end
end
