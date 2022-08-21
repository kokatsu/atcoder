import std;

void main() {
    long N, P, Q, R;
    readf("%d %d %d %d\n", N, P, Q, R);

    auto A = readln.chomp.split.to!(long[]);

    auto B = A.cumulativeFold!"a + b".array;
    auto C = B.assumeSorted;

    bool isOK;
    foreach (i; 0 .. N) {
        long X;
        if (i > 0) X = B[i-1];
        auto ubx = C.upperBound(P+X-1);
        if (ubx.empty) continue;
        if (ubx.front != P + X) continue;

        long Y = P + X;
        auto uby = C.upperBound(Q+Y-1);
        if (uby.empty) continue;
        if (uby.front != Q + Y) continue;

        long Z = Q + Y;
        auto ubz = C.upperBound(R+Z-1);
        if (ubz.empty) continue;
        if (ubz.front != R + Z) continue;

        isOK = true;
    }

    writeln(isOK ? "Yes" : "No");
}