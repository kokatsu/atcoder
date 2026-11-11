import std;

enum int L = int.max;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    int[] vegetables = new int[](N + 1), meats = new int[](N + 1);
    foreach (i; 1 .. N + 1) {
        int P, T;
        readfln("%d %d", P, T);

        (T == 0 ? vegetables[i] : meats[i]) = P;
    }

    int[] R = new int[](M);
    foreach (ref r; R) {
        int[] S = readln.chomp.split.to!(int[]);

        int v = L, m = L;
        foreach (s; S[1 .. $]) {
            if (vegetables[s] > 0) {
                v = min(v, vegetables[s]);
            }
            else {
                m = min(m, meats[s]);
            }
        }

        r = (v < L && m < L) ? v + m : -1;
    }

    string res = format("%(%d\n%)", R);
    res.writeln;
}
