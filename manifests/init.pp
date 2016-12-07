# Class: ganeti
# ===========================
#
# Full description of class ganeti here.
#
# Parameters
# ----------
#
# [*packages*]
#   Packages for a ganeti cluster.
#
# [*packages_libs*]
#   Libs packages for a ganeti cluster.
#
# [*packages_tools*]
#   Tools packages for a ganeti cluster.
#
# Examples
# --------
#
# @example
#    class { 'ganeti': }
#
# Authors
# -------
#
# Lorraine Data Network <contact@ldn-fai.net>
#
# Copyright
# ---------
#
# Copyright 2016 Lorraine Data Network, unless otherwise noted.
#
class ganeti (
  $packages       = $ganeti::params::packages,
  $packages_libs  = $ganeti::params::packages_libs,
  $packages_tools = $ganeti::params::packages_tools,
) inherits ganeti::params {

  package { $packages: ensure => installed; }
  package { $packages_libs: ensure => installed; }
  package { $packages_tools: ensure => installed; }

}
