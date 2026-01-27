import std;

void main() {
    int[] A = readln.chomp.split.to!(int[]);

    int S = A.sum;

    bool ok;
    foreach (i; 1 .. 1 << 4) {
        int T;

        foreach (j, a; A) {
            if (((i >> j) & 1) == 1) {
                T += a;
            }
        }

        ok |= (T * 2 == S);
    }

    string res = ok ? "Yes" : "No";
    res.writeln;
}
