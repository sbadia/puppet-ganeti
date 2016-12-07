# Class:: ganeti::params
#
class ganeti::params {
  case $::osfamily {
    'Debian': {
      $packages = ['ganeti','ganeti-doc','qemu-kvm']
      $packages_libs = ['python-openssl','python-pyparsing',
                        'python-simplejson','python-bitarray',
                        'python-pyinotify','python-pycurl',
                        'python-ipaddr','python-paramiko',
                        'python-pip','python-dev']
      $packages_tools = ['lvm2','bridge-utils','iproute',
                        'iputils-arping','openssl','socat',
                        'fping','python']
    }
    default: {
      fail("Unsupported osfamily: ${::osfamily}")
    }
  }
} # Class:: ganeti::params
