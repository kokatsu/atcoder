import std;

void main() {
    long N, M, P;
    readf("%d %d %d\n", N, M, P);

    auto A = readln.chomp.split.to!(long[]);
    auto B = readln.chomp.split.to!(long[]);

    auto S = B.sort;
    auto C = B.cumulativeFold!"a + b".array;

    long res;
    foreach (a; A) {
        auto lb = S.lowerBound(P - a);

        if (lb.empty) {
            res += P * M;
            continue;
        }

        long l = lb.length.to!long;
        res += a * l + C[l - 1] + P * (M - l);
    }

    res.writeln;
}
