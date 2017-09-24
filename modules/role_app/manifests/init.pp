#
class role_app {

notify  { 'Dev - role_app': }
  include profile_base
  include profile_app

}
