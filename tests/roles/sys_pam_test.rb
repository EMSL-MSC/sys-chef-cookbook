name "sys_pam_test"
description "Use to test the [sys::pam] recipe."
run_list( "recipe[sys]" )
default_attributes(
  "sys" => {
    "pam" => {
      "access" => [
        "+:devops:10.1.1.1 LOCAL",
        "+:ALL:.devops.test LOCAL",
        "+:ALL:LOCAL",
        "-:ALL:ALL"
      ],
      "limits" => [ 
        "*    hard memlock unlimited",
        "*    soft memlock unlimited"
      ]
    },
    "pamd" => {
      "common-session" => "
        session [default=1]     pam_permit.so
        session requisite       pam_deny.so
        session required        pam_permit.so
        session required        pam_unix.so
      "
    }
  }
)
