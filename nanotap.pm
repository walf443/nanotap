package Clib::nanotap;
our $VERSION = '0.02';
1;
__END__

=head1 NAME

Clib::nanotap - yet another TAP library for C/C++

=head1 SYSNOPSIS

    #include <nanotap/nanotap.h>
    int main() {
        ok(true, "ok");
        done_testing();
    }

=head1 DESCRIPTION

nanotap is yet another TAP library for C/C++.

=head1 METHODS

see L<nanotap.h> itself :P
(XXX I need better documentation tool)

=head1 SEE ALSO

L<Test::More>
