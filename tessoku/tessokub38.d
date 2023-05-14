import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    int a = 1;
    auto A = new int[](N);
    A[0] = 1;
    foreach (i, s; S) {
        if (s == 'A') ++a;
        else a = 1;

        A[i+1] = a;
    }

    int b = 1;
    auto B = new int[](N);
    B[N-1] = 1;
    foreach_reverse (i, s; S) {
        if (s == 'B') ++b;
        else b = 1;

        B[i] = b;
    }

    int res;
    foreach (x, y; zip(A, B)) res += max(x, y);

    res.writeln;
}