# 1.2.1 Ensure package manager repositories are configured (Not Scored)
#
#
# Description:
# Systems need to have package manager repositories configured to ensure they receive the latest patches and updates.
#
# @summary 1.2.1 Ensure package manager repositories are configured (Not Scored)
#
# @param enforced Should this rule be enforced
#
# @example
#   include secure_linux_cis::redhat7::cis_1_2_1
class secure_linux_cis::redhat7::cis_1_2_1 (
  Boolean $enforced = true,
) {

  if $enforced {

    if($facts['yum_repolist'] != undef) {
      if member($secure_linux_cis::repolist, $facts['yum_repolist']) == false {
        notify { "No approved repo found in list:  ${secure_linux_cis::repolist}": }
      }
    }

  }
}