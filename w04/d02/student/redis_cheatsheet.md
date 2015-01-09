"r" = right
"l" = left
"m" = multiple
"h" = hash
"p" = mili

String CRUD
-binary safe and can be any kind of data
Create
  SET
Read
  GET
Update
  APPEND
Destroy
  DEL

    set user:1:id 1
    set user:2:id 2

    set user:1:fname phil
    set user:2:fname bill

    incr user 1

Keys CRUD
Create
Read
Update
Destroy

Hashes CRUD
Create
Read
Update
Destroy

  hset user:1 fname phil
  hset user:1 email beachguy@aol.com
  hmset user:1 age 47 interests none
  hmset user:2 fname bill email billdowg@hotmail.com

Lists CRUD
Create
  LSET
Read
  LINDEX
  LLEN
  LRANGE
Update
  LINSERT
  LPUSH
  LTRIM
  RPUSH
  RPUSHX
  LPUSHX
Destroy
  BLPOP
  BRPOP
  BRPOPLPUSH
  LPOP
  LREM
  LTRIM
  RPOP
  RPOPLPUSH

Sets CRUD
-unordered collection of strings, do not allow repeated members, same elements will only keep single copy
Create
  SADD
Read
  SCARD
  SISMEMBER
  SMEMBERS
  SRANDMEMBER
Update
  SDIFF
  SINTERSTORE
  SUNION
  SDIFFSTORE
  SINTER
  SMOVE
  SUNIONSTORE
  SSCAN
Destroy
  SDIFF
  SDIFFSTORE
  SREM

Sorted Sets CRUD
Create
Read
Update
Destroy

HyperLogLog CRUD
Create
Read
Update
Destroy

Pub/Sub CRUD
Create
Read
Update
Destroy

Transactions CRUD
Create
Read
Update
Destroy

Scripting CRUD
Create
Read
Update
Destroy

Connection CRUD
Create
Read
Update
Destroy

Server CRUD
Create
Read
Update
Destroy

