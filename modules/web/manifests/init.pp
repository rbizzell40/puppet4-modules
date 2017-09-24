

class web (
      $index_content  = "DEFAULT_VALUE",
     
    ) {
      package { 'apache2':
        ensure => installed,
      }
      service { 'apache2':
        ensure => running,
        enable => true,
      }
      file { '/var/www/html':
        ensure => directory,
        owner  => 'root',
        group  => 'root',
        mode   => '0644',
      }
      file { '/var/www/html/index.html':
        ensure    => file,
        content   => template('web/index.html.erb'),
        require   => Package['apache2'],
        subscribe => Service['apache2'],
      }
      file_line { 'index.html':
        path  => '/var/www/html/index.html',
        line  => $index_content,
        match => 'WEBSITE',
      }
     
    }

}
