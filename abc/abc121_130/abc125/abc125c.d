import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    auto L = A.cumulativeFold!gcd.array;

    long res = L[N-2], R = A.back;
    foreach_reverse (i; 0 .. N-2) {
        res = max(res, gcd(L[i], R));
        R = gcd(R, A[i+1]);
    }
    res = max(res, R);

    res.writeln;
}