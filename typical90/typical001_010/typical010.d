import std;

void main() {
    int N;
    readf("%d\n", N);

    auto one = new long[](N + 1), two = new long[](N + 1);
    foreach (i; 0 .. N) {
        long C, P;
        readf("%d %d\n", C, P);

        one[i + 1] = one[i];
        two[i + 1] = two[i];

        if (C == 1) {
            one[i + 1] += P;
        }
        else {
            two[i + 1] += P;
        }
    }

    int Q;
    readf("%d\n", Q);

    foreach (i; 0 .. Q) {
        int L, R;
        readf("%d %d\n", L, R);

        --L;
        writeln(one[R] - one[L], " ", two[R] - two[L]);
    }
}
