class test{
  define tmpfile($greeting, $mode='0644') {
    file {"/tmp/${name}":
      content => "${greeting},world - ${name}\n",
      mode    =>  $mode,
    }
  }
  tmpfile{ ['a','b','c']:
    greeting => "hello",
    mode     => '0600'
  }
}
