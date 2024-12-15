import std;

enum ulong MOD = 10uL ^^ 9 + 7uL;

void main() {
    ulong a, b;
    readf("%d %d\n", a, b);

    ulong res = powmod(a, b, MOD);
    res.writeln;
}
