#include "../nanotap.h"

int subsubtest() {
    ok(1, "sub subtest1 ok");
    diag("SUB SUBTEST DIAG");
    done_testing();
}

int subtest1(){
    ok(1, "subtest1 ok");
    diag("SUBTEST DIAG");
    subtest("sub subtest1", subsubtest);
    done_testing();
}

int main() {
    subtest("subtest1", subtest1);
    done_testing();
}
