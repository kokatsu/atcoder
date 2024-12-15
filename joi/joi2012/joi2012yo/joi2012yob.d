import std;

void main() {
    int N;
    readf("%d\n", N);

    int M = N * (N - 1) / 2;
    auto res = new int[](N);
    foreach (_; 0 .. M) {
        int A, B, C, D;
        readf("%d %d %d %d\n", A, B, C, D);

        --A, --B;

        if (C == D)
            ++res[A], ++res[B];
        else
            res[C > D ? A : B] += 3;
    }

    auto S = res.dup.sort;
    foreach (ref x; res) {
        x = S.upperBound(x).length.to!int + 1;
    }

    writefln("%(%s\n%)", res);
}
