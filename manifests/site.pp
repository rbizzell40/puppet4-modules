notify {  'Dev site.pp': }

$role=hiera('role')
include $role

