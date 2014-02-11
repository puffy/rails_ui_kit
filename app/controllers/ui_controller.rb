class UiController < ::ApplicationController
  layout :ui_layout

  def index
    # Scan main app views/ui folder for templates
    @template_names = Dir.glob('app/views/ui/*').inject([]) do |result, file|
      file_name = File.basename(file)

      # Don't select partials and directories
      if file_name !~ /^_/ && File.file?(file)
        result << file_name.sub(/\.html.*$/, '')
      end

      result
    end

    render layout: false
  end
end
