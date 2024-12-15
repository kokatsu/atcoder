import std;

void main() {
    int K;
    readf("%d\n", K);

    int N, res = -1;
    foreach (i; 1 .. K + 1) {
        N = (N * 10 + 7) % K;

        if (N == 0) {
            res = i;
            break;
        }
    }

    res.writeln;
}
