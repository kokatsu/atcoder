import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new char[][](N);
    foreach (i; 0 .. N) {
        readf("%s\n", A[i]);
    }

    char T = A[1][0];

    foreach (i; 0 .. N) {
        swap(A[0][i], T);
    }

    foreach (i; 1 .. N) {
        swap(A[i][N - 1], T);
    }

    foreach_reverse (i; 0 .. N - 1) {
        swap(A[N - 1][i], T);
    }

    foreach_reverse (i; 1 .. N - 1) {
        swap(A[i][0], T);
    }

    string res = format("%(%(%c%)\n%)", A);
    res.writeln;
}
