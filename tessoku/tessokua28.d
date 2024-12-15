import std;

enum int MOD = 10 ^^ 4;

void main() {
    int N;
    readf("%d\n", N);

    int res;
    foreach (_; 0 .. N) {
        dchar T;
        int A;
        readf("%c %d\n", T, A);

        if (T == '+')
            res += A;
        if (T == '-')
            res -= A;
        if (T == '*')
            res *= A;

        res = (res + MOD) % MOD;

        res.writeln;
    }
}
