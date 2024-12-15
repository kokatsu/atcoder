import std;

void main() {
    long N, M, K;
    readf("%d %d %d\n", N, M, K);

    auto A = [0L] ~ readln.chomp.split.to!(long[]);
    auto B = readln.chomp.split.to!(long[]);

    auto C = A.cumulativeFold!"a + b".array;
    auto D = B.cumulativeFold!"a + b".array.assumeSorted;

    ulong res;
    foreach (i, c; C) {
        if (c > K)
            break;

        ulong num = i + D.lowerBound(K - c + 1).length;
        res = max(res, num);
    }

    res.writeln;
}
