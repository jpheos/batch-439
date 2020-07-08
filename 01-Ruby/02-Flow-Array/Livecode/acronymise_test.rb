require 'awesome_print'
require_relative 'acronymise'

# ap acronymize("")
# ap "--------------------------------"
# ap acronymize("AWAY FROM KEYBOARD")
# ap "--------------------------------"
# ap acronymize("working from home")
ap acronymize("") == ""
ap acronymize("AWAY FROM KEYBOARD") == "AFK"
ap acronymize("working from home") == "WFH"
