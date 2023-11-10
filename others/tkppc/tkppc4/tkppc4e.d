import std;

void main() {
    long N, M, K, E;
    readf("%d %d %d %d\n", N, M, K, E);

    auto A = readln.chomp.split.to!(long[]);
    auto B = readln.chomp.split.to!(long[]);

    A.sort;
    B.sort!"a > b";

    long res, rem = E;
    foreach (i, a; A) {
        while (a > rem && res < K) {
            rem += B[res++];
        }

        if (a > rem) {
            writeln("No\n", i);
            return;
        }

        rem -= a;
    }

    writeln("Yes\n", res);
}