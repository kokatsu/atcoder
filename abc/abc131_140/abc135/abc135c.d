import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);
    auto B = readln.chomp.split.to!(long[]);

    long res;
    foreach (i, ref b; B) {
        long c = min(A[i], b);
        res += c, b -= c;

        long d = min(A[i+1], b);
        res += d, A[i+1] -= d;
    }

    res.writeln;
}