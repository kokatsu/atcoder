import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    long[int] B;
    foreach (a; A) {
        ++B[a];
    }

    long S;
    foreach (v; B.byValue) {
        S += v * (v - 1) / 2;
    }

    foreach (a; A) {
        long res = S - B[a] + 1;
        res.writeln;
    }
}
