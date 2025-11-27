select count () from numbers a join numbers b on a.id+2 = b.id where a. id and b.id<1000 ;
35
sqlite> select a.*, b.* from numbers a join numbers b on a.id+2 = b.id where a. id and b.id<100 ; 
3|5
5|7
11|13
17|19
29|31
41|43
59|61
71|73