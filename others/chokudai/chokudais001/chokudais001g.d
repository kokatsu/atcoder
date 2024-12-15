import std;

enum long MOD = 10 ^^ 9 + 7;

void main() {
    long N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(long[]);

    long res, base = 1;
    foreach_reverse (x; a) {
        res = (res + x * base) % MOD;
        base = (base * (10 ^^ x.to!string
                .length
                .to!long)) % MOD;
    }

    res.writeln;
}
