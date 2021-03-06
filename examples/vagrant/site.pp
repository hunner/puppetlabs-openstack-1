node 'puppet' {
  include ::ntp
}

node 'control.localdomain' {
  include ::openstack::role::controller
}

node 'storage.localdomain' {
  include ::openstack::role::storage
}

node 'network.localdomain' {
  include ::openstack::role::network
}

node 'compute.localdomain' {
  include ::openstack::role::compute
}

node 'swiftstore1.localdomain' {
  class { '::openstack::role::swiftstorage':
    zone => '1'
  }
}

node 'swiftstore2.localdomain' {
  class { '::openstack::role::swiftstorage':
    zone => '2'
  }
}

node 'swiftstore3.localdomain' {
  class { '::openstack::role::swiftstorage':
    zone => '3'
  }
}
