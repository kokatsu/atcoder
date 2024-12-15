import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto res = new int[](N);
    foreach (i, a; A) {
        res[0] += (i % 2 == 0 ? 1 : -1) * a;
    }

    foreach (i; 1 .. N) {
        res[i] = A[i - 1] * 2 - res[i - 1];
    }

    writefln("%(%s %)", res);
}
