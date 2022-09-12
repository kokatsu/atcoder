import std;

void main() {
    int A, B, C, D;
    readf("%d %d %d %d\n", A, B, C, D);

    int cnt;
    while (A > 0 && C > 0) {
        if (cnt % 2 == 0) C -= B;
        else A -= D;

        ++cnt;
    }

    writeln(cnt % 2 == 1 ? "Yes" : "No");
}