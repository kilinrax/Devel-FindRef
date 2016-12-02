BEGIN { $| = 1; print "1..1\n"; }
use Devel::FindRef;
my $x = [];
print "not " unless Devel::FindRef::track($x) =~
/^ARRAY\(0x[\da-f]+\) \[refcount \d+] is
referenced by REF\(0x[\da-f]+\) \[refcount \d+], which is
   the lexical '\$x' in CODE\(0x[\da-f]+\) \[refcount \d+], which is
      the main body of the program\.
\z/;
print "ok 1\n";
