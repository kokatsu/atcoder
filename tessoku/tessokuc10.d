import std;

enum ulong M = 10 ^^ 9 + 7;

void main() {
    ulong W;
    readf("%d\n", W);

    ulong res = 12uL * powmod(7uL, W-1, M) % M;
    res.writeln;
}