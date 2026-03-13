import std;

void main() {
    int N;
    readfln("%d", N);

    int[] t = new int[](N);
    foreach (i; 0 .. N) {
        readfln("%d", t[i]);
    }

    int res = int.max;
    foreach (i; 0 .. 1 << N) {
        int a, b;
        foreach (j; 0 .. N) {
            if ((i >> j & 1) == 1) {
                a += t[j];
            }
            else {
                b += t[j];
            }
        }
        res = min(res, max(a, b));
    }

    res.writeln;
}
