import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    foreach (i, ref a; A) a -= i + 1;
    A.sort;

    long res;
    foreach (a; A) res += abs(a-A[N/2]);

    res.writeln;
}