require 'sketchup.rb'
require 'extensions.rb'

module CustomExportToolbar
  # Create the extension container wrapper
  ext = SketchupExtension.new("Export 2D Graphic Button", "custom_export_folder/main.rb")

  # Add your professional meta-details here:
  ext.version     = "1.0.0"
  ext.description = "Adds a toolbar button to trigger the 2D Graphic export dialog."
  ext.creator     = "estv"
  ext.copyright   = "2026 estv"

  # Register it with SketchUp's Extension Manager
  Sketchup.register_extension(ext, true)
end
