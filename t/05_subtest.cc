#include "../nanotap.h"

void subsubtest() {
    ok(1, "sub subtest1 ok");
    ok(0, "sub subtest1 fail");
    diag("SUB SUBTEST DIAG");
    done_testing();
}

void subtest1(){
    ok(1, "subtest1 ok");
    diag("SUBTEST DIAG");
    subtest("sub subtest1", subsubtest);
    done_testing();
}

int main() {
    subtest("subtest1", subtest1);
    done_testing();
}
