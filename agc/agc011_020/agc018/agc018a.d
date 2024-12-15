import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);

    long M = A.maxElement, G = A.fold!((a, b) => gcd(a, b));

    bool isOK = A.canFind(K);
    if (K <= M) {
        isOK |= ((M - K) % G == 0);
    }

    writeln(isOK ? "POSSIBLE" : "IMPOSSIBLE");
}
