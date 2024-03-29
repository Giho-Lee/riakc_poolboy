{application,riakc_poolboy,
    [{description,"Simple Riak PB connection pool"},
     {vsn,"1.4.0"},
     {registered,[]},
     {applications,[kernel,stdlib,riakc,poolboy,folsom]},
     {mod,{riakc_poolboy_app,[]}},
     {env,
         [{pools,
              [{riak_pool,
                   [{size,10},{max_overflow,20}],
                   [{hostname,"127.0.0.1"},
                    {port,8087},
                    {ping_every,undefined},
                    {sync_connect,false},
                    {options,[{auto_reconnect,true}]}]}]},
          {reconnect_retries,10},
          {reconnect_delay,450}]},
     {modules,
         [riakc_pool_status,riakc_pool_sup,riakc_poolboy,riakc_poolboy_app,
          riakc_poolboy_sup,riakc_poolboy_worker,riakc_ts_poolboy]}]}.
