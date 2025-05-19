import std;

void main() {
    int N;
    readf("%d\n", N);

    auto res = new dchar[](N + 1);
    res[] = '-';
    foreach (i; 0 .. N + 1) {
        foreach (j; 1 .. 10) {
            if (N % j != 0) {
                continue;
            }

            if (i % (N / j) == 0) {
                res[i] = to!dchar(j + '0');
                break;
            }
        }
    }

    res.writeln;
}
