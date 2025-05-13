import std;

void main() {
    long N, D, P;
    readf("%d %d %d\n", N, D, P);

    auto F = readln.chomp.split.to!(long[]);

    F.sort!"a > b";
    auto C = [0L] ~ F.cumulativeFold!"a + b".array;

    long res = F.sum;

    long index;
    while (index < N) {
        long M = C[min(N, index + D)] - C[index];
        if (P > M) {
            break;
        }

        res -= M - P;
        index += D;
    }

    res.writeln;
}
