lua << EOF
package.loaded['nightfox'] = nil
package.loaded['nightfox.colors'] = nil
package.loaded["nightfox.colors.nightfox"] = nil
package.loaded["nightfox.colors.nordfox"] = nil
package.loaded["nightfox.colors.voidfox"] = nil
package.loaded['nightfox.config'] = nil
package.loaded['nightfox.theme'] = nil
package.loaded['nightfox.util'] = nil

require('nightfox').set()
EOF
