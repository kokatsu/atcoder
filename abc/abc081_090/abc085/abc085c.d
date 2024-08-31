import std;

void main() {
    int N, Y;
    readf("%d %d\n", N, Y);

    int x = -1, y = -1, z = -1;

    foreach (i; 0 .. N+1) {
        foreach (j; 0 .. N-i+1) {
            int k = N - i - j;
            if (10_000 * i + 5_000 * j + 1_000 * k == Y) {
                x = i;
                y = j;
                z = k;
                break;
            }
        }
    }

    writeln(x, " ", y, " ", z);
}