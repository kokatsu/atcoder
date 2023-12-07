import std;

enum int L = 10 ^^6 + 1;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new int[](L);
    foreach (_; 0 .. N) {
        int s, t;
        readf("%d %d\n", s, t);

        ++A[s], --A[t];
    }

    int res;
    foreach (i; 1 .. L) {
        A[i] += A[i-1];
        if (A[i-1] == 0 && A[i] > 0) ++res;
    }

    res.writeln;
}