import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    int[] P = readln.chomp.split.to!(int[]);

    int[] R = new int[](N);
    foreach (ref r; R) {
        int[] I = readln.chomp.split.to!(int[]);

        if (I.length == 1) {
            continue;
        }

        int[] C = I[1 .. $].dup;
        C.sort;

        int Q, S;
        foreach (c; C) {
            if (Q < P[c - 1]) {
                Q = P[c - 1];
                S = c;
            }
        }

        r = S;
    }

    string res = format("%(%d\n%)", R);
    res.writeln;
}
