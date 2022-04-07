import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);
    auto B = readln.chomp.split.to!(long[]);

    long D;
    foreach (i; 0 .. N) D += abs(A[i] - B[i]);

    bool isOK = K >= D;
    isOK &= (K - D) % 2 == 0;

    writeln(isOK ? "Yes" : "No");
}