

module AqaraLocalizable
  class Command
    class Gen < Command
      self.summary = '开始下载多语言平台的代码并替换项目多语言文件'

      def initialize(argv)
        super
        project_directory = argv.option('project-directory')
        project_directory = Dir.pwd if project_directory.nil?
        @project_directory = Pathname.new(project_directory).expand_path
      end

      def validate!
        super
        if @project_directory.nil?
          help! 'error: no input project directory which to use with the `--project-directory` option.'
        end
      end

      def self.options
        [
          ['--project-directory=/project/dir/', 'The path to the root of the project directory']
        ].concat(super)
      end

      def run
        puts '如果多语言脚本插件有问题可以找zxf看看'.green
        target_path = Pathname.new(File.dirname(__FILE__)).realpath.parent.parent

        system "cd #{target_path}/script/ios_py_code;python3 ios_sp_str_generator.py #{@project_directory}"
        # system 'cd /lib/script/ios_py_code;python3 ios_sp_str_generator.py'
      end
    end
  end
end
