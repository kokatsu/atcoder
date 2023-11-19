import std;

void main() {
    long N, A, B;
    readf("%d %d %d\n", N, A, B);

    long[] D;
    if (B > 0) D = readln.chomp.split.to!(long[]);

    D ~= [0, N+1];
    D.sort;

    auto F = D.slide(2).map!"a[1] - a[0] - 1".array;

    long res;
    foreach (f; F) {
        res += f - f / A;
    }

    res.writeln;
}