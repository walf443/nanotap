use strict;
use warnings;
use IPC::Open3;
use Test::More;
use Symbol 'gensym';
use t::Utils;

my($wtr, $rdr, $err);
$err = gensym;
my $pid = open3($wtr, $rdr, $err, './t/05_subtest');

is_ex(join('', <$rdr>), <<'...');
	ok 1 - subtest1 ok
		ok 1 - sub subtest1 ok
		not ok 2 - sub subtest1 fail
		1..2
	not ok 2 - sub subtest1
	1..2
not ok 1 - subtest1
1..1
...

is_ex(join('', <$err>), <<'...');
	# SUBTEST DIAG
		# SUB SUBTEST DIAG
...

waitpid($pid, 0);

done_testing;
