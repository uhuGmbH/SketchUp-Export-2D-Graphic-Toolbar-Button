require 'sketchup.rb'

module CustomExportToolbar
  unless file_loaded?(__FILE__)
    
    # 1. Create the Command
    export_cmd = UI::Command.new("Export 2D Graphic") {
      Sketchup.send_action(21237)
    }
    
    # 2. Configure Button Details
    export_cmd.tooltip = "Export 2D Graphic"
    export_cmd.status_bar_text = "Click to export a 2D graphic."
    
    # Define the path to your icon image files
    icon_path = File.join(File.dirname(__FILE__), "tb_E2D.png")
    
    # Grabs the icon safely from this specific subfolder
    icon_path = File.join(File.dirname(__FILE__), "tb_E2D.png")
    export_cmd.small_icon = icon_path
    export_cmd.large_icon = icon_path
    
    # 3. Create the Toolbar
    toolbar = UI::Toolbar.new("Custom Automation")
    toolbar.add_item(export_cmd)
    
    # 4. (Optional) Add to the Extensions drop-down menu
    menu = UI.menu("Plugins")
    menu.add_item(export_cmd)
    
    toolbar.show
    file_loaded(__FILE__)
  end
end
