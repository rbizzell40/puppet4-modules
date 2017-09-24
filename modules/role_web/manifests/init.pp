#

class role_web {

notify { 'Dev - role_web': }
  include profile_base
  include profile_web
}
