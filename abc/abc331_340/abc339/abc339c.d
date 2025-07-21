import std;

void main() {
    int N;
    readf("%d\n", N);

    long[] A = readln.chomp.split.to!(long[]);

    long S, M;
    foreach (a; A) {
        S += a;
        M = min(M, S);
    }

    long res = max(0, -M) + S;
    res.writeln;
}
