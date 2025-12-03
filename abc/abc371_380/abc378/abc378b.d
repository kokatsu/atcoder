import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] q = new int[](N), r = new int[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", q[i], r[i]);
    }

    int Q;
    readf("%d\n", Q);

    int[] A = new int[](Q);
    foreach (ref a; A) {
        int t, d;
        readf("%d %d\n", t, d);

        --t;

        int x = d / q[t], y = d % q[t];
        int z = y <= r[t] ? x : x + 1;
        a = z * q[t] + r[t];
    }

    string res = format("%(%d\n%)", A);
    res.writeln;
}
