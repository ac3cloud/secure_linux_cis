# @api private
#
class secure_linux_cis::distribution::ubuntu18::cis_5_2_6 {
  include secure_linux_cis::rules::ensure_ssh_ignorerhosts_is_enabled
}
