import std;

void main() {
    int N;
    readf("%d\n", N);

    int A, B, C, D;
    A = C = 1;
    B = D = N + 1;

    while (B - A > 1) {
        int mid = (A + B) / 2;

        writefln("? %d %d %d %d", A, mid - 1, 1, N);
        stdout.flush;

        int ret;
        readf("%d\n", ret);

        (mid - A <= ret ? A : B) = mid;
    }

    while (D - C > 1) {
        int mid = (C + D) / 2;

        writefln("? %d %d %d %d", 1, N, C, mid - 1);
        stdout.flush;

        int ret;
        readf("%d\n", ret);

        (mid - C <= ret ? C : D) = mid;
    }

    writefln("! %d %d", A, C);
}
