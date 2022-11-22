
require 'Aqara_localizable'

module Pod
  # hook
  @HooksManager = HooksManager
  @HooksManager.register('Aqara_Localizable', :post_install) do |_, _options|
    args = ['gen', "--project-directory=#{Config.instance.installation_root}"]

    AqaraLocalizable::Command.run(args)
  end
end