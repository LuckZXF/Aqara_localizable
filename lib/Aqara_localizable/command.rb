
module AqaraLocalizable
  class Command < CLAide::Command

    require 'Aqara_localizable/command/command_gen'

    self.abstract_command = false
    self.command = 'Aqaralocaliabzle'
    self.version = VERSION
    self.description = 'Run AqaraHome localizable download and replace the .localizable from the project'
    self.plugin_prefixes = %w[claide gen]

    def initialize(argv)
      super
      return if ansi_output?

      Colored2.disable!
      String.send(:define_method, :colorize) { |string, _| string }
    end
  end
end