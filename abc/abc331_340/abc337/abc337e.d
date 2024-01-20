import std;

void main() {
    int N;
    readf("%d\n", N);

    int M = N.to!real.log2.ceil.to!int;
    M.writeln;
    stdout.flush;

    foreach (i; 0 .. M) {
        int[] arr;
        foreach (j; 1 .. N+1) {
            if (j & (1 << i)) {
                arr ~= j;
            }
        }

        writefln("%d %(%s %)", arr.length, arr);
        stdout.flush;
    }

    string S;
    readf("%s\n", S);

    int res;
    foreach (i, s; S) {
        if (s == '1') {
            res |= 1 << i;
        }
    }

    if (res == 0) res = N;

    res.writeln;
}