require '3scale_toolbox/commands/import_command/import_csv'
require '3scale_toolbox/commands/import_command/openapi'

module ThreeScaleToolbox
  module Commands
    module ImportCommand
      include ThreeScaleToolbox::Command
      def self.command
        Cri::Command.define do
          name        'import'
          usage       'import <sub-command> [options]'
          summary     'import super command'
          description 'Importing 3scale entities'

          run do |_opts, _args, cmd|
            puts cmd.help
          end
        end
      end
      add_subcommand(ImportCsvSubcommand)
      add_subcommand(OpenAPI::OpenAPISubcommand)
    end
  end
end
