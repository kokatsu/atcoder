import std;

void main() {
    int N;
    readf("%d\n", N);

    auto P = readln.chomp.split.to!(int[]);
    auto Q = readln.chomp.split.to!(int[]);

    P[] -= 1, Q[] -= 1;

    auto D = N.iota.array;

    int res, cnt;
    do {
        ++cnt;
        if (D == P)
            res += cnt;
        if (D == Q)
            res -= cnt;
    }
    while (D.nextPermutation);

    if (res < 0)
        res *= -1;

    res.writeln;
}
